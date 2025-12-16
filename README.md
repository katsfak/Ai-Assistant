# 🤖 AI Assistant

A modern, cross-platform AI chat assistant built with Flutter, featuring a clean interface and real-time conversational AI capabilities.

[![Flutter](https://img.shields.io/badge/Flutter-3.3.4+-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.3.4+-0175C2?logo=dart)](https://dart.dev)
[![License](https://img.shields.io/github/license/katsfak/Ai-Assistant)](LICENSE)
[![Stars](https://img.shields.io/github/stars/katsfak/Ai-Assistant)](https://github.com/katsfak/Ai-Assistant/stargazers)

## ✨ Features

- 💬 **Interactive Chat Interface** - Powered by dash_chat_2 for a seamless messaging experience
- 🤖 **AI-Powered Responses** - Integrates with AI APIs for intelligent conversations
- 🌐 **Cross-Platform Support** - Runs on Android, iOS, Web, Windows, macOS, and Linux
- 🎨 **Modern UI/UX** - Clean and intuitive Material Design interface
- ⚡ **Fast & Responsive** - Optimized performance across all platforms
- 🔗 **HTTP Integration** - Real-time API communication for instant responses

## 📱 Platforms

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:
- [Flutter SDK](https://flutter.dev/docs/get-started/install) (>= 3.3.4)
- [Dart SDK](https://dart.dev/get-dart) (>= 3.3.4)
- An IDE (VS Code, Android Studio, or IntelliJ)
- Platform-specific tools: 
  - **Android**: Android Studio & Android SDK
  - **iOS**: Xcode (macOS only)
  - **Web**: Chrome
  - **Desktop**: Platform-specific build tools

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/katsfak/Ai-Assistant.git
   cd Ai-Assistant
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure API Keys** (if required)
   - Create a configuration file for your AI service API keys
   - Update the necessary environment variables or config files

4. **Run the app**
   ```bash
   # For mobile/desktop
   flutter run

   # For web
   flutter run -d chrome

   # For specific platform
   flutter run -d windows
   flutter run -d macos
   flutter run -d linux
   ```

## 📦 Dependencies

This project uses the following key packages:

| Package | Version | Purpose |
|---------|---------|---------|
| [dash_chat_2](https://pub.dev/packages/dash_chat_2) | ^0.0.20 | Modern chat UI components |
| [http](https://pub.dev/packages/http) | ^1.2.1 | HTTP requests for API integration |
| [cupertino_icons](https://pub.dev/packages/cupertino_icons) | ^1.0.6 | iOS-style icons |

## 🏗️ Project Structure

```
ai_assistant/
├── android/          # Android-specific files
├── ios/              # iOS-specific files
├── web/              # Web-specific files
├── windows/          # Windows-specific files
├── macos/            # macOS-specific files
├── linux/            # Linux-specific files
├── lib/              # Main application code
├── test/             # Unit and widget tests
├── pubspec.yaml      # Project dependencies
└── README.md         # This file
```

## 🛠️ Development

### Building for Production

```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# iOS
flutter build ios --release

# Web
flutter build web --release

# Windows
flutter build windows --release

# macOS
flutter build macos --release

# Linux
flutter build linux --release
```

### Testing

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# Run specific test file
flutter test test/widget_test.dart
```

### Code Quality

```bash
# Analyze code
flutter analyze

# Format code
flutter format .

# Check for outdated dependencies
flutter pub outdated
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.  For major changes, please open an issue first to discuss what you would like to change.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 👤 Author

**Aikaterini Eirini Sfakianou**
- GitHub: [@katsfak](https://github.com/katsfak)
- Email: katsfak12@gmail.com

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Contributors to dash_chat_2 package
- The open-source community

## 📞 Support

If you have any questions or need help, please: 
- Open an [issue](https://github.com/katsfak/Ai-Assistant/issues)
- Star ⭐ this repository if you find it helpful! 

---

**Made with ❤️ using Flutter**
