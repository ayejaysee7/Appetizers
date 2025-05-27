# 🍽️ Appetizers

**Appetizers** is a SwiftUI-based iOS app that allows users to browse delicious appetizers, view details, and add them to a shopping cart. The app is built with modular architecture and follows modern iOS development best practices to ensure clean, maintainable, and scalable code.

---

## 🚀 Features

- 🍴 **Appetizer List** – Browse a list of appetizers with images and descriptions.
- 🛒 **Order Management** – Add and remove items from a persistent cart.
- 👤 **Account View** – View and update user account details.
- 🧱 **Reusable UI Components** – Includes reusable `Buttons`, `Cells`, `Empty States`, and custom modifiers.
- 🛠️ **Custom UIKit Integrations** – Leverages UIKit where SwiftUI falls short.
- 🧠 **Clean MVVM Architecture** – Maintains separation of concerns across `Model`, `View`, and `ViewModel`.
- 🧪 **Extensible and Testable** – Designed with future expansion and unit testing in mind.

---

## 🧱 Tech Stack

- **SwiftUI** – Declarative UI framework by Apple
- **Combine** – Apple’s reactive framework for data flow
- **MVVM** – Model-View-ViewModel architecture
- **UIKit** – For advanced view components where needed

---

## 📁 Project Structure
Appetizers/
├── Model/ # Appetizer, User, Order data models
├── Screens/ # App screens (Tab views like OrderView, AccountView)
├── Views/ # UI elements (Cells, Buttons, Empty States, Modifiers)
├── Utilities/ # Alert definitions, extensions, state managers
└── Assets/ # Images and other assets

