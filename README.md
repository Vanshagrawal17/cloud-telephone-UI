# Cloud Telephone UI App

## Overview
The **Cloud Telephone UI App** is a user-friendly interface designed for managing cloud telephony services. It allows users to track leads, manage backlogs, view and update statuses, and handle contact information seamlessly. The app includes scheduling and feedback features, ensuring a streamlined workflow for telecommunication needs.

## Features
- **Status Page**: Displays customer-specific information and enables easy updates to statuses.
- **Leads Screen**: Manage and track leads effectively.
- **Backlog Page**: Organize tasks and prioritize ongoing work.
- **Contacts Page**: Maintain a centralized directory of contacts.
- **Settings Page**: Customize preferences and app configurations.
- **Navigation Bar**: A grey navigation bar at the bottom for intuitive access to different screens.
- **Dynamic Status Display**: Shows the customer's name prominently when selecting their status.
- **Menu Navigation**: The "VA" icon directs users to the menu screen.
- **Ongoing Call Integration**: Initiate calls from the BacklogsScreen with dynamic name and phone number.
- **Status Button**: Replaces calling icons to provide direct access to respective status screens.

## Technologies Used
- **Framework**: Flutter
- **Programming Language**: Dart

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Vanshagrawal17/cloud-telephone-ui.git
   ```
2. Navigate to the project directory:
   ```bash
   cd cloud-telephone-ui
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the application:
   ```bash
   flutter run
   ```

## App Structure
- **lib/**: Contains the main application code.
  - `main.dart`: Entry point of the application.
  - `screens/`: Includes all screen-specific widgets like `status_screen.dart`, `leads_screen.dart`, and more.
  - `widgets/`: Custom reusable widgets.
- **assets/**: Stores images, icons, and other static files.
- **pubspec.yaml**: Defines project dependencies and metadata.

## Usage
1. Launch the app on a connected device or emulator.
2. Use the bottom navigation bar to switch between pages.
3. Access the status page to update statuses and view customer details.
4. Use the menu icon ("VA") for additional features.
5. Navigate to the BacklogsScreen and click the green calling icon (now replaced with the status button) to access status screens for specific contacts.

## Contributing
We welcome contributions! To contribute:
1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add feature description"
   ```
4. Push to your branch:
   ```bash
   git push origin feature-name
   ```
5. Open a pull request.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact
For questions or support, please contact:
- **Name**: Vansh Agrawal
- **Email**: vanshagrawal1733@gmail.com
- **GitHub**: Vanshagrawal17(https://github.com/Vanshagrawal17)

