# 🎵 Spotify Clone UI - Flutter

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)

A professional, high-fidelity Spotify Home Screen clone built using **Flutter**. This project focuses on creating a responsive, modular, and visually appealing dark-themed UI that mimics the actual Spotify mobile experience.

---

## 🚀 Project Overview

This project is a dedicated UI/UX exploration of the Spotify mobile application. It demonstrates advanced Flutter layout techniques, custom widget creation, and state management to provide a seamless user experience. It's designed to be clean, readable, and easily extensible.

---

## ✨ Features

- 🌑 **Authentic Dark Theme**: Matches Spotify's signature color palette and aesthetic.
- 📱 **Fully Responsive**: Adapts perfectly to various mobile screen sizes using `MediaQuery` and flexible layouts.
- 🧩 **Modular Architecture**: Built with reusable widgets for easy maintenance and scalability.
- 🎵 **Interactive Music Player**: Features a mini-player on the home screen and a dedicated "Now Playing" view.
- 🖼️ **Robust Image Loading**: Uses `CachedNetworkImage` to handle network images efficiently and prevent UI breaks.
- 🛠️ **State Management**: Implements `Provider` to manage the playback state across the app.

---

## 📸 Screenshots

| Home Screen | Music Player |
| :---: | :---: |
| ![Home Screen](screenshots/home.png) | ![Player Screen](screenshots/player.png) |

---

## 🎥 Demo Video

[Watch the Demo Video](video-link)

---

## 🛠 Tech Stack

- **Framework**: [Flutter](https://flutter.dev/)
- **Language**: [Dart](https://dart.dev/)
- **State Management**: [Provider](https://pub.dev/packages/provider)
- **Image Handling**: [Cached Network Image](https://pub.dev/packages/cached_network_image)
- **Icons**: Material Design Icons & Cupertino Icons

---

## 📂 Folder Structure

```text
lib/
├── constants/         # App constants like colors and styles
├── models/            # Data models (e.g., Song model)
├── providers/         # State management logic
├── screens/           # Main application screens (Home, Player)
├── widgets/           # Reusable UI components (AlbumCard, BottomNav)
└── main.dart          # Entry point of the application
```

---

## ⚙️ Installation & Run Instructions

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed.
- Android Studio / VS Code with Flutter extension.
- An emulator or physical device.

### Steps
1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/spotify-clone-flutter.git
   ```
2. **Navigate to the project directory:**
   ```bash
   cd spotify-clone-flutter
   ```
3. **Install dependencies:**
   ```bash
   flutter pub get
   ```
4. **Run the app:**
   ```bash
   flutter run
   ```

---

## 🧠 Challenges Faced

- **Handling Image Errors**: Initially encountered `SocketException` when loading network images. This was solved by implementing `cached_network_image` with proper error widgets.
- **Layout Precision**: Mimicking the exact spacing and alignment of the Spotify UI required a deep dive into `Sliver` layouts and `GridView` configurations.
- **State Flow**: Ensuring the mini-player updates correctly when a new song is selected from different sections of the home screen.

---

## 🔮 Future Improvements

- [ ] Integrate **Spotify API** for real-time music data.
- [ ] Add actual audio playback using `audioplayers` or `just_audio`.
- [ ] Implement Search and Library screens.
- [ ] Add animations and transitions for a more fluid experience.

---

## 👤 Author

**Naitik Raj**
- GitHub: [@naitik-raj](https://github.com/naitik-raj)
- LinkedIn: [Your Profile](https://linkedin.com/in/your-profile)

---

⭐️ If you like this project, feel free to give it a star!
