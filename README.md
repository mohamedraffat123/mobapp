# MobApp - Quiz Application

MobApp is a simple quiz application built using Flutter. The app allows users to answer a series of questions and provides immediate feedback on whether their answers are correct or incorrect. At the end of the quiz, users are shown their total score and have the option to restart the quiz.

## Features

- **Dynamic Questions**: The app dynamically displays questions and their corresponding images.
- **Real-Time Feedback**: Users receive instant feedback (thumbs up or thumbs down) after answering each question.
- **Score Tracking**: The app keeps track of the number of correct answers.
- **Restart Option**: At the end of the quiz, users can restart the quiz to try again.
- **Localized UI**: The app includes Arabic text for a localized user experience.

## Technologies Used

- **Flutter**: The app is built using the Flutter framework for cross-platform development.
- **Dart**: The programming language used for the application logic.
- **rflutter_alert**: A Flutter package used to display custom alert dialogs.
- **Material Design**: The app uses Flutter's Material Design components for a modern and responsive UI.

## Application Structure

- **`main.dart`**: The entry point of the application, containing the main UI and logic.
- **`appBrain.dart`**: Manages the quiz logic, including questions, answers, and navigation between questions.
- **`question.dart`**: Defines the structure of a question, including its text, image, and correct answer.

## How It Works

1. The app displays a question along with an image.
2. Users can select either "صح" (True) or "خطأ" (False) as their answer.
3. The app provides immediate feedback with a thumbs-up or thumbs-down icon.
4. Once all questions are answered, an alert dialog shows the user's score.
5. Users can restart the quiz by clicking the "ابدء من جديد" (Start Again) button.

## Screenshots

_Add screenshots of your app here to showcase its UI and functionality._

## Getting Started

To run this application locally:

1. Clone the repository.
2. Ensure you have Flutter installed on your system.
3. Run `flutter pub get` to install dependencies.
4. Use `flutter run` to launch the app on an emulator or physical device.

## Dependencies

The app uses the following dependencies:

- `flutter`
- `rflutter_alert`

## Future Improvements

- Add more questions and categories.
- Implement a timer for each question.
- Add support for multiple languages.
- Enhance the UI with animations and transitions.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
