📱 Community Connect

A powerful, real-time community engagement platform built to foster connection. Features dynamic themes, role-based access, and interactive posts.

🎨 UI/UX Previews

Light Mode

Dark Mode

Profile & Settings

Clean, readable feeds

OLED-friendly dark theme

Customizable profiles

✨ Key Features

Feature

Description

🔐 Secure Auth

Seamless Google Sign-In & secure Guest Mode authentication.

🌗 Dynamic Themes

Instant toggle between Light & Dark modes based on user preference.

💬 Interactive Posts

Create posts with Images/Links, Upvote/Downvote, and Comment in real-time.

🛡️ Moderation Tools

Role-based access control (RBAC) allowing mods to manage communities.

🚀 State Management

Powered by Riverpod for robust, testable, and efficient state handling.

🔥 Real-time Backend

Built on Firebase (Firestore & Auth) for instant data syncing across devices.

🛠️ Tech Stack

Framework: Flutter (Cross-platform)

Language: Dart

Backend: Firebase (Auth, Firestore, Storage)

State Management: Riverpod

Navigation: GoRouter / Flutter Navigator 2.0

Local Storage: Hive / Shared Preferences

🚀 Getting Started

Follow these steps to get a local copy up and running.

Prerequisites

Flutter SDK (v3.10.0)

Dart SDK

Android Studio / VS Code

Installation

Clone the Repo

git clone https://github.com/Dhiraj320/CommunityApp

Install Dependencies

cd community-connect
flutter pub get


Firebase Setup

Create a project on Firebase Console.

Download google-services.json (Android) and GoogleService-Info.plist (iOS).

Place them in android/app/ and ios/Runner/ respectively.

Run the App

flutter run


📂 Project Structure

A quick look at the top-level directory structure.

lib/
├── core/                # Constants, Themes, Common Widgets
├── features/            # Feature-based architecture (Auth, Home, Post, etc.)
│   ├── auth/
│   │   ├── controller/  # Riverpod Providers
│   │   ├── repository/  # Firebase Logic
│   │   └── screens/     # UI Pages
│   └── home/
├── models/              # Dart Data Models
└── main.dart            # Entry point

























![Screenshot_2024-04-21-23-26-26-20_4635bf938443b8d2ed6e8e8488877397](https://github.com/Dhiraj320/Redit_Clone/assets/95081385/6b897877-026d-4911-82ce-133158d39f9c)




![Screenshot_2024-07-25-21-04-09-86_4635bf938443b8d2ed6e8e8488877397 1](https://github.com/user-attachments/assets/7746bb6b-9a93-4157-9f29-939fb608157f)




![Screenshot_2024-04-21-23-26-47-10_4635bf938443b8d2ed6e8e8488877397](https://github.com/Dhiraj320/Redit_Clone/assets/95081385/580d365f-458d-4efb-80f4-df5e3c20bacd)
![Screenshot_2024-07-25-21-04-19-13_4635bf938443b8d2ed6e8e8488877397 1](https://github.com/user-attachments/assets/63ed6afd-7d4b-4313-995a-0945531923d9)
![Screenshot_2024-07-25-21-04-24-10_4635bf938443b8d2ed6e8e8488877397 1](https://github.com/user-attachments/assets/f811916b-19fc-4c5e-8bf7-1a86a172a5e5)
