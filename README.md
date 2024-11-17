
# Flutter Authentication App with Firebase

This Flutter project implements user authentication (login and signup) using **Firebase Authentication**. The app features three main pages: `HomePage`, `LoginPage`, and `SignUpPage`, with reusable widgets for user input handling.

## Table of Contents
- [Features](#features)
- [Installation](#installation)
- [Firebase Setup](#firebase-setup)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)

## Features
- **User Signup**: New users can create an account using their email and password.
- **User Login**: Existing users can log in securely.
- **User Logout**: Simple logout functionality from the home page.
- **Firebase Integration**: Uses Firebase Authentication for backend support.

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/flutter-auth-app.git
   cd flutter-auth-app
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Set up Firebase**:
   Follow the [Firebase setup instructions](#firebase-setup) to configure the project.

4. **Run the app**:
   ```bash
   flutter run
   ```

## Firebase Setup
1. Go to [Firebase Console](https://console.firebase.google.com/) and create a new project.
2. Add an Android and/or iOS app to your Firebase project.
3. Download the `google-services.json` (for Android) or `GoogleService-Info.plist` (for iOS) and place it in the appropriate directory in your Flutter project.
4. Add the `firebase_core` and `firebase_auth` packages to your `pubspec.yaml`.

   ```yaml
   dependencies:
     flutter:
       sdk: flutter
     firebase_core: ^2.10.0
     firebase_auth: ^5.8.0
   ```

5. Initialize Firebase in `main.dart`:
   ```dart
   void main() async {
     WidgetsFlutterBinding.ensureInitialized();
     await Firebase.initializeApp();
     runApp(MyApp());
   }
   ```

## Usage
- Navigate to the login page and sign in with your email and password.
- If you don’t have an account, use the sign-up page to create one.
- Once logged in, you’ll be redirected to the home page, where you can log out.

## Contributing
Contributions are welcome! Please fork this repository, create a new branch, and submit a pull request.
