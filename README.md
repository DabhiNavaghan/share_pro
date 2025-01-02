# share_pro

A Flutter plugin that enables sharing text content seamlessly across Android and iOS platforms. With a simple API and null safety support, share_pro makes it easy to implement sharing functionality in your Flutter applications.

[![pub package](https://img.shields.io/pub/v/share_pro.svg)](https://pub.dev/packages/share_pro)
[![Platform Support](https://img.shields.io/badge/platform-android%20|%20ios-blue.svg)](https://pub.dev/packages/share_pro)

## Features

- 📱 Cross-platform support (Android & iOS)
- 📝 Share text content to other applications
- ✨ Simple and intuitive API
- 🛡️ Null safety support
- 🚀 Minimal setup required

## Platform Support

| Android | iOS |
|:-------:|:---:|
|    ✅    |  ✅  |

## Requirements

- Android: minSdkVersion 21
- iOS: iOS 11.0 or higher
- Flutter: 3.3.0 or higher

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  share_pro: ^1.0.1
```

## Usage

1. Import the package:

```dart
import 'package:share_pro/share_pro.dart';
```

2. Use it in your code:

```dart
final sharePro = SharePro();

// Share text content
try {
  final result = await sharePro.share('Hello World!');
  
  switch (result) {
    case ShareResult.shared:
      print('Content was shared successfully');
      break;
    case ShareResult.cancelled:
      print('Share was cancelled by user');
      break;
    case ShareResult.error:
      print('Share operation failed');
      break;
  }
} catch (e) {
  print('Error: $e');
}
```

## Platform Configuration

### Android

Add the following to your Android Manifest (`android/app/src/main/AndroidManifest.xml`):

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.navaghan.share_pro">
    <queries>
        <intent>
            <action android:name="android.intent.action.SEND" />
            <data android:mimeType="text/plain" />
        </intent>
    </queries>
</manifest>
```

### iOS

No additional configuration required.

## Example

Check out the [example](https://github.com/yourusername/share_pro/tree/main/example) directory for a complete sample application using share_pro.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Issues and Feedback

Please file specific issues, bugs, or feature requests in our [issue tracker](https://github.com/yourusername/share_pro/issues).

## Contributing

Contributions are welcome! Please read our [contributing guidelines](CONTRIBUTING.md) to get started.
