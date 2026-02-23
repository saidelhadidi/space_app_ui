# Space App UI 🚀🌌

An immersive, dark-themed space exploration application developed with Flutter. This project demonstrates advanced UI layouts, smooth transitions, and efficient data handling between screens.

## 🎯 Learning Milestones
This project represents a significant step in my Flutter journey, moving from static layouts to **dynamic, data-driven interfaces**.

## ✨ Technical Features & Logic

* **📑 Named Routing & Navigation:** Organized app navigation using `Named Routes` for a cleaner and more scalable `MaterialApp` structure.
* **🪐 Dynamic PageView Browser:** Implemented a `PageView.builder` combined with a `PageController` in the `HomeScreen`. This allows users to navigate through planets with smooth horizontal transitions and synchronized text updates.
* **🔄 Advanced Data Passing:** Demonstrated proficiency in state and data management by passing entire `PlanetModel` objects as arguments through `Navigator.pushNamed` and retrieving them via `ModalRoute`.
* **🎨 High-End UI/UX Design:**
    - **Custom Theming:** A deep-space dark theme using consistent hex codes (`#0E0E0E`).
    - **Visual Depth:** Used `LinearGradient` overlays to seamlessly blend planetary assets with the background.
    - **Typography:** Integrated custom fonts ('spaceApp' / Space Grotesk) to enhance the futuristic aesthetic.
* **📱 Native Integration:**
  Fully configured `flutter_native_splash` and `flutter_launcher_icons` for a professional, branded launch experience.

## 🛠️ Tech Stack & Widgets
* **Navigation:** Named Routes, `Navigator.pushNamed`, `Navigator.pop`.
* **Interactive Widgets:** `PageView`, `ElevatedButton` (CircleBorder), `SingleChildScrollView`.
* **Layouts:** `Stack`, `Align`, `Positioned`, `SafeArea`.
* **Data:** Custom `PlanetModel` with static list initialization.

## 🚀 How to Run
1. Clone the repository.
2. Run `flutter pub get`.
3. Run `flutter run`.