# Remindera App 🕒

A clean, modern task reminder application built with **Flutter**, featuring task creation, custom navigation, and a responsive UI. This app helps users stay organized by allowing them to add tasks with names, notes, dates, and time ranges.

---

## ✨ Features

- 📝 Add tasks with title, description, date, and time range
- 📆 Calendar and time pickers for user-friendly input
- 📱 Responsive design for mobile
- 🚀 Clean and modular code structure (DRY principles)
- 🔁 Bottom navigation with Home, Add Task, and Profile tabs
- 🔙 Reusable navigation and input widgets

---

## 📁 Folder Structure

lib/
│
├── main.dart # Entry point
│
├── constants/
│ └── styles.dart # Global styles & color constants
│
├── widgets/
│ ├── custom_text_field.dart # Reusable styled text field
│ └── custom_bottom_nav.dart # Reusable bottom navigation
│
├── screens/
│ ├── home_screen.dart # Displays added task summary
│ ├── homes.dart # Basic home screen
│ └── add_task/
│ ├── add_task_field.dart # Task form inputs
│ └── add_task_navbar.dart # Scaffold with AppBar and bottom nav


---

## 🛠️ Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/remindera_app.git
cd remindera_app
flutter pub get
flutter run
```

##✏️ Customization
You can easily:

Update colors in styles.dart

Add more screens by extending bottom_navigation.dart

Connect to a backend or local database for persistent tasks

##🧠 DRY Architecture Principles Applied
All UI styles (borders, text styles) are defined once in styles.dart

Reusable widgets like CustomTextField and CustomBottomNavigation eliminate repetition

Navigation is centralized for maintainability

##📃 License
This project is open source under the MIT License. See the LICENSE file for details.

##👨‍💻 Author
Your Name
📧 aisdev99@gmail.com
🔗 github.com/Aisdev979, gitub.com/Aishtml
