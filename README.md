# hello_zenblen
Android application that sends a bluetooth command containing the string “Hello Zenblen!” when a UI button is pressed.

## Getting Started
In order to test the code, you must emulate an Android or Apple device.
This can be achieved by installing Android Studio or Xcode off the app store. The code can be run on the Android Studio IDE or Visual Studio Code (with the Flutter and Dart extensions). 

### Flutter
This project utilizes the Google's UI Software Development kit, [Flutter](https://flutter.dev/) ([documentation](https://docs.flutter.dev/)). Because it is open-source, there are two choices for bluetooth connectivity: [FlutterBlue](https://pub.dev/packages/flutter_blue) or [Flutter Bluetooth Serial](https://pub.dev/packages/flutter_bluetooth_serial). Before moving forward with either package, I would like to test both, once I am physically able to. 

### Development
The codebase lies in my [Github repo](https://github.com/angelehernandez/hello_zenblen). The main file can be found in `/hello_zenblen/lib/main.dart`. Bluetooth connectivity has not been established, but is the next step. Support for bluetooth can be found in the `bluetooth` branch.

### Deliverable Questions
**1. Briefly describe how you would deploy an Android application.**
[Here](https://docs.flutter.dev/deployment/android) is the documentation to deploy an application to an Android device. Following this documentation, I have three APK files:
-   `hello_zenblen/build/app/outputs/apk/release/app-armeabi-v7a-release.apk`
-   `hello_zenblen/build/app/outputs/apk/release/app-arm64-v8a-release.apk`
-   `hello_zenblen/build/app/outputs/apk/release/app-x86_64-release.apk`.
These are to be installed on an Android device via command line:
	1. Connect the device via USB port.
	2. Navigate to project `cd [project]`
	3. Run `flutter install`.

**2. Will the application you wrote work with iOS? If not, why?**
As of now, the code can be emulated on an iOS device. 

**3. In this exercise, the goal is to send a bluetooth command. After the command is sent, we may expect the controller to send the host a confirmation and success flag. How would you go about monitoring and receiving the confirmation and success flag?**
These actions seem to be supported by the Flutter plugins mentioned in the [Flutter section](#Flutter). Utilizing `await` operators, a persistent connection is theoretically guaranteed. 