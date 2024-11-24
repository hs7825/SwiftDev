
# Apple Frameworks Swift App

This Swift app is designed to deepen the understanding of key SwiftUI concepts, including Stacks (HStack, VStack, and ZStack), the usage of `@Binding` and `@State`, and practical file/folder organization in app development.

## Purpose

The Apple Frameworks App allows users to explore and learn about different Apple frameworks in a structured and visually appealing way. The project serves as a hands-on educational exercise to:

- Explore the utility of **padding** vs. **Spacer()** in SwiftUI layouts.
- Understand and implement **@State** and **@Binding** to manage state effectively across the app.
- Practice refactoring and structuring code for scalability and readability.

---

## Features

- **Framework Grid View**: Displays a grid of Apple frameworks with a clean layout.
- **Framework Detail View**: Presents detailed information about each selected framework.
- **Safari View Integration**: Opens related external links seamlessly within the app.
- **Custom Buttons**: Implements reusable button components, such as `AFButton` and `FrameworkXButton`, to maintain a consistent UI.
- **Dynamic Title Views**: Utilizes `FrameworkTitleView` for customizable section headers.

---

## Learning Highlights

This project emphasized the following SwiftUI concepts and best practices:

1. **Stacks (HStack, VStack, ZStack)**:
   - Learned to create flexible layouts using SwiftUI’s stack components.
   - Explored the benefits of using `Spacer()` for responsive design compared to simple padding.

2. **State Management**:
   - Utilized `@State` for local state management within a view.
   - Employed `@Binding` to share state between parent and child views effectively.

3. **File Organization**:
   - Improved project maintainability through better refactoring and folder/file structuring.

---

## Architecture: MVVM Pattern

This project follows the **Model-View-ViewModel (MVVM)** architecture for a clean separation of concerns.

### **Model**
The `Framework` struct in `Framework.swift` acts as the **model**. It encapsulates the data for an Apple framework, including its name, description, image, and URL. It conforms to `Hashable` and `Identifiable`, making it easy to use in SwiftUI's `ForEach` and other views.

- **Encapsulation**: Contains relevant properties (`id`, `name`, `imageName`, `urlString`, `description`) for representing a framework.
- **MockData**: Provides sample data for testing and previewing.

### **ViewModel**
The `FrameworkGridViewModel` in `FrameworkGridViewModel.swift` is the **view model**. It bridges the gap between the model (`Framework`) and the views (`FrameworkGridView` and others).

Responsibilities:
1. **State Management**:
   - `isShowingDetailView`: Controls whether the detail view is displayed.
   - `selectedFramework`: Holds the framework selected by the user. Updates trigger the detail view display.

2. **Grid Configuration**:
   - Defines a `columns` property for a flexible grid layout using `GridItem`.

3. **Logic Isolation**:
   - Keeps business logic separate from the views, focusing on data flow and state management.

### **View**
The SwiftUI files constitute the **view** layer, responsible for presenting the UI and interacting with the view model:

1. **`FrameworkGridView`**:
   - Displays a grid of frameworks using a `LazyVGrid`.
   - Integrates with the view model to handle selection and display of details.
   - Uses `NavigationView` for navigation and `.sheet` for modals.

2. **`FrameworkDetailView`**:
   - Shows detailed information about a selected framework.
   - Uses `@State` to manage the display of the `SafariView`.
   - Integrates reusable components (`FrameworkXButton` and `AFButton`) for UI consistency.

3. **Reusable Components**:
   - `AFButton`: A stylized button for actions (e.g., "Learn More").
   - `FrameworkXButton`: A dismiss button for modal views.
   - `FrameworkTitleView`: Displays a framework's name and icon, used in the grid and detail views.
   - `SafariView`: A UIKit-based view wrapped in SwiftUI to open external links.

---

## Installation

To run this project:

1. Clone the repository to your local machine:
   ```bash
   git clone [repository-url]
   ```
2. Open the project in Xcode.
3. Build and run the app on a simulator or a physical device running iOS 14.0 or later.

---

## File Overview

- **Framework.swift**: Defines the data model for Apple frameworks, including properties for name, description, and related links.
- **FrameworkGridView.swift**: Manages the grid layout displaying all frameworks.
- **FrameworkGridViewModel.swift**: Provides the view model for managing the state and data flow for the grid view.
- **SafariView.swift**: Integrates a Safari view for displaying external links.
- **AFButton.swift**: Implements a reusable button component for consistent UI interactions.
- **FrameworkXButton.swift**: A specialized button for dismissing modal views.
- **FrameworkTitleView.swift**: A reusable component for framework section titles.
- **FrameworkDetailView.swift**: Displays detailed information about a selected framework.

---

## Demo

* <img src='./finalKap' width='' alt='Showing final app demo' />*

---

## Future Enhancements

- Add search functionality to filter frameworks by name.
- Implement animations for transitions between views.
- Support dark mode for improved accessibility.

---

## Acknowledgments

This project was inspired by the desire to learn SwiftUI's core features while building an app that highlights Apple’s extensive ecosystem.

