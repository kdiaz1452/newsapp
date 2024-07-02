# News Aggregation and Bias App

## Overview
This project is a cross-platform news aggregation app developed using Flutter and DART. The app delivers an optimal user experience on both Android and iOS platforms. It includes a private CI/CD pipeline to automate testing and version control, ensuring code quality before publication. The app integrates public APIs and links to media bias and fact-checking websites to promote user awareness of biased news sources.

## Project Motivation & Current Status
While this project was initially the result of an internship, it was one that I had been passionate about for several months. The initial goal for this project was to combat the ever-growing divide in media bias in the United States by promoting awareness of political bias and encouraging informed reading. While the code in this repository contains code for the functioning app, further development is ongoing with plans to include analytics of media bias and a app-wide fake news detector.

## Features
- **Cross-Platform Development**: Built using Flutter and DART to support both Android and iOS platforms.
- **CI/CD Pipeline**: Implemented via GitHub to automate testing and version control updates.
- **Device Testing**: Utilized Android Studio and iOS emulators to ensure UI/UX consistency.
- **Media Bias Awareness**: Integrated public APIs and in-app links to fact-checking websites.

## Technologies Used
- **Framework**: Flutter
- **Programming Language**: DART
- **Version Control**: Git
- **Development Tools**: Android Studio, iOS Emulators

## Setup and Installation
1. Clone the repository:
   ```sh
   git clone <[repository-url](https://github.com/kdiaz1452/newsapp)>
   ```
2. Install dependencies:
   ```sh
   flutter pub get
   ```
3. Set up environment variables (if any):
   - `API_KEY`: Your API key for news sources.

4. Run the app on an emulator or a physical device:
   ```sh
   flutter run
   ```

## Continuous Integration
- Set up GitHub Actions for CI/CD:
  - Add `.github/workflows/ci.yml` for automated testing and deployment.

## Testing
- Use Android Studio and iOS emulators to test the app.
- Run tests:
   ```sh
   flutter test
   ```

## Learning Outcomes
Throughout the initial development of this project, I learned a tremendous amount regarding app development, development life cycles, CI/CD pipelines, public API integration, and UI/UX design. I also gained a solid foundation in Flutter and DART, both of which I had not worked with prior to this project. 

## Challenges
The primary challenge I faced throughout this project was generating a consistent UI/UX for both iOS and Android devices. Setting up the appropriate environments and cross-testing on the respective emulators presented substantial learning opportunities and debugging experience. Through rigorous testing, a seamless experience and design was achieved for both platforms.

## Special Thanks
- Dr. Jeyaprakash Chelladurai, Ph.D. for his guidance on this project. Dr. Chelladurai's mentorship throughout the planning and implementation of this project made the experience incredibly valuable and enjoyable.
