<div align="center">

# Test Plan - Serious Game - Team 5

---

**Title:** Test Plan - Serious Game - Team 5

**Author:** Maxime CARON

**Team:** Team 5

**Created on:** November 12<sup>th</sup>, 2024

**Last updated:** November 22<sup>th</sup>, 2024

---

## Approvals

| Reviewer          | Role              | Approved | Date |
| ----------------- | ----------------- | -------- | ---- |
| Maxime CARON      | Quality Assurance |          |      |
| Rémy CHARLES      | Project Manager   |          |      |
| Pierre GORIN      | Program Manager   |          |      |
| Salaheddine NAMIR | Technical Lead    |          |      |
| Elone DELILLE     | Technical Writer  |          |      |
| Alexis LASSELIN   | Software Engineer |          |      |
| Camille GAYAT     | Software Engineer |          |      |

</div>

## 1. Introduction

### 1.1. Project Overview
The game will be a **Serious Game** with elements of **Strategy** and **City Management**. The focus is on resource balancing and decision-making to raise awareness about environmental issues. Players will encounter ecological dilemmas, requiring strategic thinking and moral consideration.

It's highly recommended to read the [Functional Specifications](../FunctionalSpecifications/FunctionalSpecifications.md) document to get a better understanding of the game's features and mechanics before proceeding with this document.

### 1.2. Document Purpose
The purpose of this document is to outline the testing strategy and plan for the Serious Game developed by Team 5. It will provide an overview of the testing process, including the scope, objectives, strategies, test cases, bug reporting, test schedule, and risks.

### 1.3. Scope
The document mainly targets the testing phase of the project. It will cover the following aspects:
- **Testing Tools:** The tools used for testing the game.
- **Test Strategies:** The strategies employed to ensure the game's quality.
- **Bug Reporting:** The process of reporting and tracking bugs.
- **Test Schedule:** The timeline for testing activities.
- **Risks and Contingencies:** The potential risks and their mitigation strategies.

### 1.4. Objectives
The primary objectives of this document are:
- To ensure the quality of the game by defining a comprehensive testing strategy.
- To identify the tools and techniques used for testing.
- To provide a structured approach to test the game.
- To establish a bug reporting process.
- To define a test schedule and allocate resources effectively.
- To identify potential risks and plan for contingencies.
- To ensure that the game meets the specified requirements and is free of critical defects.

## 2. Glossary

## 3. Tools
### 3.1. Reporting Tools
- **GitHub Issues:** GitHub Issues will be used to report and track bugs, issues, and feature requests. The issues will be categorized based on their severity and priority, and assigned to the relevant team members for resolution.
### 3.2. Testing Tools
- **Godot Engine:** Godot Engine will be used as the primary game engine for developing and testing the game. It provides a comprehensive set of tools for game development, including scene editing, scripting, and debugging.
- **Google Forms:** Google Forms will be used to collect feedback from users during play testing. The feedback will be used to identify usability issues, bugs, or design flaws.
- **Google Sheets:** Google Sheets will be used to store and analyze the feedback collected from users during play testing. It will help in identifying trends, patterns, and areas for improvement.

### 3.3. Performance Monitoring Tools
- **Task Manager:** Task Manager will be used to monitor the game's resource usage on Windows, such as CPU, memory, and GPU. It will help in identifying performance issues and bottlenecks.
- **Activity Monitor:** Activity Monitor will be used to monitor the game's resource usage on macOS, such as CPU, memory, and GPU. It will help in identifying performance issues and bottlenecks.
- **System Monitor:** System Monitor will be used to monitor the game's resource usage on Linux, such as CPU, memory, and GPU. It will help in identifying performance issues and bottlenecks.
- **Godot Performances Monitor:** Godot Profiler will be used to profile the game's performance and identify bottlenecks or performance issues. It provides detailed information on resource usage, frame rate, and memory consumption.


## 4. Test Strategies

### 4.1. Smoke Testing
The smoke testing phase will be conducted to ensure that the basic functionalities of the game are working as expected. It will involve testing the core features of the game to verify that they are operational and stable. The smoke testing will cover the following areas:
- **Game Launch:** Verify that the game launches without any errors.
- **Main Menu:** Check that the main menu is accessible and functional.
- **Gameplay:** Test the basic gameplay mechanics, such as camera movement, resource management, and decision-making.

### 4.2. Exploratory Testing
Exploratory testing will be performed to uncover any hidden defects or issues that may not be apparent during the regular testing process. It involves exploring the game in an unstructured manner to identify potential bugs, usability problems, or design flaws. The focus will be on:
- **Game Mechanics:** Testing the various game mechanics and interactions to ensure they work as intended.
- **User Experience:** Evaluating the overall user experience, including controls, feedback, and visual elements.
- **Edge Cases:** Testing the game under unusual conditions or scenarios to identify potential vulnerabilities.

### 4.3. Play Testing
Play testing will be conducted to gather feedback from real users and evaluate the game's playability, engagement, and overall experience. It will involve:
- **User Feedback:** Collecting feedback from players on the game's enjoyment and general idea in a dedicated Google Form.
Link forms: [EN](https://forms.gle/9EBFaZDe9YELbBD96), [FR](https://forms.gle/MFbKxKKUcWhG2aTJ8)
Forms feedbacks will be collected in this [Google Sheet](https://docs.google.com/spreadsheets/d/15Wzkg-CMg0YiQwxjlq3kPDKzgapVBM8iaG4ngdFdD8E/edit?usp=sharing)
- **User Testing:** Observing players as they interact with the game to identify usability issues, bugs, or design flaws.

### 4.4. Performance Testing
Performance testing will be conducted to evaluate the game's performance under various conditions and ensure that it meets the required performance standards. It will involve:
- **Load Testing:** Testing the game's performance under different load levels to identify bottlenecks or performance issues.
- **Stress Testing:** Subjecting the game to extreme conditions to evaluate its stability and resilience.
- **Resource Usage:** Monitoring the game's resource usage, such as CPU, memory, and GPU, to identify any performance issues.

### 4.5. Regression Testing
Regression testing will be performed to ensure that new changes or updates do not introduce new defects or issues into the game. It will involve:
- **Re-testing:** Testing the game after each update or change to verify that existing features are still working as expected.
- **Compatibility Testing:** Testing the game on different devices, operating systems, and browsers to ensure compatibility.
- **Integration Testing:** Testing the integration of new features or updates with the existing game components to ensure they work together seamlessly.
- **Performance Testing:** Re-evaluating the game's performance after each update to ensure that it meets the required performance standards.
- **Play Testing:** Re-testing the game with real users to gather feedback and identify any new issues or bugs.

## 5. Test Cases
The test cases will be developed based on the game's features and mechanics outlined in the [Functional Specifications](../FunctionalSpecifications/FunctionalSpecifications.md) document. The test cases will cover the following areas:
- **Game Launch:** Verify that the game launches without any errors.
- **Main Menu:** Check that the main menu is accessible and functional.
- **Gameplay:** Test the basic gameplay mechanics, such as camera movement, resource management, and decision-making.
- **User Interface:** Evaluate the user interface elements, such as buttons, menus, and tooltips.
- **Game Mechanics:** Test the various game mechanics and interactions to ensure they work as intended.

All tests will be documented in [Test Cases](./TestCases.md) document.
All tests will be performed by the Quality Assurance team from the 5<sup>th</sup> week of development to the 7<sup>th</sup> week of development.

## 6. Bug Reporting
Bugs and issues will be reported using GitHub Issues. The bug reporting process will follow these steps:
1. **Identify the Bug:** Identify the bug or issue encountered during testing.
2. **Reproduce the Bug:** Reproduce the bug by following the steps that led to the issue.
3. **Create an Issue:** Create a new issue on GitHub Issues with a detailed description of the bug, including steps to reproduce, expected behavior, and actual behavior.
4. **Assign the Issue:** Assign the issue to the relevant team member responsible for resolving the bug.
5. **Fix the Bug:** The team member will investigate and fix the bug as soon as possible.
6. **Verify the Fix:** Verify that the bug has been fixed and the issue is resolved.
7. **Close the Issue:** Close the issue on GitHub Issues once the bug has been fixed and verified.

### GitHub Issues Labels
The following labels will be used to categorize and prioritize issues on GitHub Issues:
- **Bug:** Indicates a bug or issue that needs to be fixed.
- **Enhancement:** Indicates a feature request or enhancement that can be implemented in future updates.
- **Duplicate:** Indicates a duplicate issue that has already been reported.
- **Invalid:** Indicates an issue that is not valid or does not require action.
- **Won't Fix:** Indicates an issue that will not be fixed or addressed.
- **Help Wanted:** Indicates an issue that requires assistance or collaboration from other team members.

### GitHub Issue Template
The following template will be used to report bugs on GitHub Issues:

```markdown
## Description
[Describe the bug or issue encountered]

## Steps to Reproduce
[Provide detailed steps to reproduce the bug]

## Expected Behavior
[Describe the expected behavior]

## Actual Behavior
[Describe the actual behavior]

## Screenshots
[Include any screenshots or images that may help in understanding the issue]

## Additional Information
[Include any additional information or context about the bug]
```

## 7. Test Schedule

| Week | Task | Responsible | Date |
| ---- | ---- | ----------- | ---- |
| 2 | Starting Test Plan | Quality Assurance | November 12<sup>th</sup>, 2024 |
| 2 | Writing Test Plan | Quality Assurance | November 15<sup>th</sup>, 2024 |
| 3 | Writing Test Plan | Quality Assurance | November 22<sup>th</sup>, 2024 |
| 3 | Review Functional Specifications | Quality Assurance | November 22<sup>th</sup>, 2024 |
| 3 | Review Risk Management Plan | Quality Assurance | November 22<sup>th</sup>, 2024 |
| 4 | Writing Test Cases | Quality Assurance | November 29<sup>th</sup>, 2024 |
| 5 | Perform all tests form Test Cases | December 6<sup>th</sup>, 2024 |
| 6 | Perform all tests form Test Cases | Quality Assurance | December 12<sup>th</sup>, 2024 |
| 6 | Review Technical Specifications | Quality Assurance | December 12<sup>th</sup>, 2024 |
| 6 | Review User Manual | Quality Assurance | December 12<sup>th</sup>, 2024 |
| 7 | Play Testing | Every team member | December 16<sup>th</sup> to December 18<sup>th</sup>, 2024 |
| 7 | Presentation Review | Quality Assurance | December 17<sup>th</sup>, 2024 |

## 8. Risks and Contingencies
