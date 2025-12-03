# Navajivan News Flutter App

This is the source code for the Navajivan News Flutter app.

## Getting Started

To run this project on your local machine, you will need to have the Flutter SDK installed and configured.

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- An IDE such as [Android Studio](https://developer.android.com/studio) or [Visual Studio Code](https://code.visualstudio.com/) with the Flutter plugin.

### Installation

1.  **Clone the repository:**
    ```bash
    git clone <repository-url>
    ```
2.  **Navigate to the project directory:**
    ```bash
    cd navajivan-news-app
    ```
3.  **Install the dependencies:**
    ```bash
    flutter pub get
    ```

### Running the App

Once the dependencies are installed, you can run the app on an emulator or a physical device:

```bash
flutter run
```

### Firebase Setup

This project uses placeholder classes for Firebase authentication. To enable Firebase functionality, you will need to:

1.  Create a new Firebase project in the [Firebase console](https://console.firebase.google.com/).
2.  Add an Android app to your Firebase project.
3.  Follow the instructions to download the `google-services.json` file and place it in the `android/app` directory.
4.  Enable Phone Number authentication in the Firebase console.
5.  Update the `authentication_service.dart` file with the actual Firebase authentication logic.

### Localization

This project uses the `flutter_localizations` package for localization. To generate the localization files, run the following command:

```bash
flutter gen-l10n
```
