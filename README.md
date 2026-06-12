# Cure Home Care 🏥

A modern, robust Flutter application for managing home care services. This app enables users to book home care services and provides an admin dashboard for accepting or rejecting these bookings, complete with push notifications and real-time updates.

## ✨ Features

- **User Authentication**: Secure sign up and login using Firebase Auth.
- **Role-based Dashboards**: Includes user interfaces for clients and an Admin Dashboard for staff.
- **Booking System**: Users can request home care services, and admins can seamlessly accept or reject them.
- **Real-time Notifications**: Integrated with Firebase Cloud Messaging (FCM) to deliver instant updates regarding booking statuses.
- **Local Storage & Caching**: Fast and responsive user experience using Hive for local data persistence.

## 🛠 Tech Stack

- **Framework**: [Flutter](https://flutter.dev/) (Dart)
- **State Management**: [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- **Dependency Injection**: [get_it](https://pub.dev/packages/get_it)
- **Routing**: [go_router](https://pub.dev/packages/go_router)
- **Backend & Database**: Firebase (Authentication, Cloud Firestore, Cloud Functions)
- **Push Notifications**: Firebase Cloud Messaging (FCM)
- **Network Requests**: [dio](https://pub.dev/packages/dio)
- **Local Database**: [hive](https://pub.dev/packages/hive)
- **Code Generation & Data Classes**: [freezed](https://pub.dev/packages/freezed), [json_serializable](https://pub.dev/packages/json_serializable)
- **Functional Programming**: [dartz](https://pub.dev/packages/dartz)

## 🏗 Architecture

The app follows **Clean Architecture** principles, dividing the codebase into distinct layers to ensure maintainability and scalability.

```text
lib/
├── core/            # Core configuration, networking, themes, and shared utilities
├── features/        # Feature-based modular structure
│   ├── auth/        # Authentication layer (Data, Domain, Presentation)
│   ├── booking/ 
│   └── dashboard/   # Dashboards and notifications logic
├── injection_container.dart # Service Locator (get_it) setup
└── main.dart        # Entry point of the application
```

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (^3.12.0)
- IDE (VS Code, Android Studio, etc.)
- A Firebase project configured for Android and iOS.

### Installation

1. **Clone the repository:**
   ```bash
   git clone <repository_url>
   cd cure_home_care
   ```

2. **Install Dependencies:**
   ```bash
   flutter pub get
   ```

3. **Generate Code (Freezed, JSON Serializable):**
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. **Firebase Configuration:**
   Make sure you have your `google-services.json` (Android) and `GoogleService-Info.plist` (iOS) configured correctly from your Firebase Console.

5. **Run the App:**
   ```bash
   flutter run
   ```

## 📝 Scripts

- Run code generator: `dart run build_runner watch -d`
- Run static analysis: `flutter analyze`
- Run tests: `flutter test`
