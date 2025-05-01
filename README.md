## 🍽️ Menu App

A Flutter application that displays a dynamic menu of 5 dishes. Each dish includes an image and a list of ingredients. When a user taps on a dish, it transitions to a detail screen using a smooth **Hero animation**.

---

### 🚀 Features

- 📱 Flutter UI with `ListView`
- 📸 Local image assets (`Image.asset`)
- 🔀 Hero animation between list and detail screens
- 📋 Ingredient list for each dish
- 🧩 Fully responsive and dynamic

---

### 📁 Project Structure

```
lib/
├── main.dart         # Main Flutter app
assets/
└── images/           # Dish images
    ├── spaghetti.jpeg
    ├── chickenbiryani.jpeg
    ├── tacos.jpeg
    ├── paneerreshmihandi.jpeg
    └── caesersalad.jpeg
```

---

### 📦 Getting Started

#### 1. Clone the repository:

```bash
git clone https://github.com/ZaeemSyed01/menu_app.git
cd menu_app
```

#### 2. Get Flutter packages:

```bash
flutter pub get
```

#### 3. Add images to `assets/images/`:

Make sure you add **five images** named exactly:

- `spaghetti.jpeg`
- `chickenbiryani.jpeg`
- `tacos.jpeg`
- `pannerreshmihandi.jpeg`
- `caesersalad.jpeg`

Or edit `imagePath` in `main.dart` to match your file names.

#### 4. Update `pubspec.yaml`:

Ensure your `pubspec.yaml` includes:

```yaml
flutter:
  assets:
    - assets/images/
```

#### 5. Run the app:

```bash
flutter run
```

---

### 📋 Example Dishes (Defined in Code)

| Dish Name             | Image Path                    | Sample Ingredients                           | 
|-----------------------|-------------------------------|----------------------------------------------|
| Spaghetti             | `assets/images/spaghetti.jpeg`| Pasta, Tomato Sauce, Garlic, Basil           |
| Chicken Biryani       | `assets/images/chickenbiryani.jpeg`  | Rice, Chicken, Spices, Onion, Yogurt         |
| Tacos                 | `assets/images/tacos.jpeg`    | Tortilla, Beef, Lettuce, Cheese, Salsa       |
| Paneer Reshmi Handi   | `assets/images/pannerreshmihandi.jpeg`   | Paneer, Butter, Tomato, Cream, Spices        |
| Caesar Salad          | `assets/images/caesersalad.jpeg`    | Lettuce, Croutons, Cheese, Chicken, Dressing |

---

### 📌 Requirements

- Flutter SDK (3.x recommended)
- Dart SDK
- VS Code or Android Studio

---

### 👨‍💻 Author

**Zaeem Syed**  
3rd-Year Computer Science Student  
Open to collaborations and feedback!

---

### 📄 License

This project is open source and available under the [MIT License](LICENSE).
