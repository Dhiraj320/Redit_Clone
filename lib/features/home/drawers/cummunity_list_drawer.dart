import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redit_clone/core/common/error_text.dart';
import 'package:redit_clone/core/common/loader.dart';
import 'package:redit_clone/core/common/sign_in_button.dart';
import 'package:redit_clone/features/auth/controller/auth_controller.dart';
import 'package:redit_clone/features/community/controller/community_controller.dart';
import 'package:redit_clone/models/community_model.dart';
import 'package:routemaster/routemaster.dart';

class CommunityListDrawer extends ConsumerWidget {
  const CommunityListDrawer({super.key});

  void navigateToCreateCommunity(BuildContext context) {
    Routemaster.of(context).push('/create-community');
  }

  void navigateToCommunity(
      BuildContext context, CommunityModel communityModel) {
    Routemaster.of(context).push('/r/${communityModel.name}');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
     final user = ref.watch(userProvider)!;
    
    final isGuest = !user.isAuthenticated;
    return Drawer(
      child: SafeArea(
          child: Column(
        children: [
          isGuest ? const SignInButton(
          
          ):
          ListTile(
            title: const Text('Create a Community'),
            leading: const Icon(Icons.add),
            onTap: () => navigateToCreateCommunity(context),
          ),
          if(!isGuest)
          ref.watch(userCommunitiesProvider).when(
              data: (communitiesLength) => Expanded(
                    child: ListView.builder(
                        itemCount: communitiesLength.length,
                        itemBuilder: (BuildContext context, int index) {
                          final community = communitiesLength[index];
                          return ListTile(
                            leading: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(community.avatar)),
                            title: Text('r/${community.name}'),
                            onTap: () {
                              navigateToCommunity(context, community);
                            },
                          );
                        }),
                  ),
              error: (error, stackTrace) => ErrorText(
                    error: error.toString(),
                  ),
              loading: () => const Loader()),
        ],
      )),
    );
  }
}
