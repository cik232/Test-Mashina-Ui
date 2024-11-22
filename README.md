# mashina_ui360

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

/lib
├── /core
│   ├── /error           → Loyihaning umumiy xatoliklarni boshqarish logikasi
│   ├── /utils           → Umumiy foydalaniladigan helper funksiyalar yoki sinflar
│   └── /constants       → Doimiy qiymatlar, masalan, ranglar, shriftlar va boshqalar
│
├── /features            → Har bir funksional imkoniyat alohida katalog
│   ├── /feature_name
│   │   ├── /data
│   │   │   ├── /models          → JSON yoki API ma'lumotlarini ifodalovchi modellar
│   │   │   ├── /repositories    → API'lar bilan ishlaydigan `repository`larning implementatsiyasi
│   │   │   └── /datasources     → API, local database (e.g., SQLite), yoki kesh bilan ishlash
│   │   ├── /domain
│   │   │   ├── /entities        → Dastur logikasida ishlatiladigan biznes obyektlari
│   │   │   ├── /repositories    → `repository` interfeyslari
│   │   │   └── /usecases        → Harakatlar (e.g., GetUser, UpdateUser)
│   │   └── /presentation
│   │       ├── /bloc            → BLoC yoki boshqa state management
│   │       ├── /pages           → UI sahifalari
│   │       └── /widgets         → Sahifalarda ishlatiladigan maxsus vidjetlar
│
├── /injection_container  → DI (dependency injection) konfiguratsiyasi
│
└── /main.dart            → Loyiha boshlanish nuqtasi

---------------------------------------------------------------------------------------------------

/features/user_management
├── /data
│   ├── /models
│   │   └── user_model.dart
│   ├── /repositories
│   │   └── user_repository_impl.dart
│   └── /datasources
│       ├── user_remote_datasource.dart
│       └── user_local_datasource.dart
├── /domain
│   ├── /entities
│   │   └── user.dart
│   ├── /repositories
│   │   └── user_repository.dart
│   └── /usecases
│       ├── get_user.dart
│       └── update_user.dart
└── /presentation
├── /bloc
│   └── user_bloc.dart
├── /pages
│   └── user_page.dart
└── /widgets
└── user_card.dart