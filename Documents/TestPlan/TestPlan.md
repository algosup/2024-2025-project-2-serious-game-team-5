<!-- See: Docs/Specifications/FuncSpecs-Helper.md -->
<div align="center">

# Test Plan

---

**Title:** Serious Game - Team 5

**Author:** Maxime CARON

**Team:** Team 5

**Created on:** November 12<sup>th</sup>, 2024

**Last updated:** November 12<sup>th</sup>, 2024

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

### 1. **Introduction**
   - **Purpose:**  
     This test plan outlines the process to verify that the game effectively educates players on global warming and its consequences, while also delivering high-quality gameplay, engagement, and technical stability.
   - **Scope:**  
     The test plan includes all aspects of game functionality, usability, educational content accuracy, performance, and compatibility across platforms.
   - **Objectives:**  
     - Ensure gameplay mechanics and educational content are both engaging and informative.
     - Confirm stable performance and compatibility across all target platforms.
     - Verify an accessible and positive user experience for all intended audiences.
   - **Target Audience:**  
     This document is for testers, developers, and other stakeholders involved in the quality assurance process.

### 2. **Test Items**
   - **Features to be Tested**:
     - **Gameplay Mechanics**: Ensure game mechanics are both functional and educational, reinforcing learning objectives about global warming.
     - **Educational Content**: Confirm accuracy, relevance, and effectiveness of information related to global warming.
     - **User Interface (UI) and User Experience (UX)**: Validate intuitive UI design and smooth navigation for players.
     - **Visual and Audio Elements**: Ensure graphics, animations, and sounds support the educational and immersive aspects of gameplay.
     - **Multimedia**: Verify in-game resources (e.g., videos, infographics) function correctly and align with learning goals.
     - **Performance**: Check stability, load times, and smooth gameplay across different devices.

### 3. **Testing Strategy**

#### **Functional Testing**
   **Goal:** Verify all features operate as intended and enhance the player’s learning experience.
   - **Tutorial Verification**: Ensure tutorials provide clear, effective guidance on game controls, mechanics, and objectives.
   - **Level Progression**: Check for a balanced, gradual increase in game difficulty, requiring players to apply knowledge of global warming.
   - **Player Interactions**: Validate that actions (e.g., making environmental choices) yield appropriate in-game feedback and impact.
   - **Scoring and Rewards**: Confirm scoring and rewards are aligned with educational objectives, like rewarding eco-friendly choices.

#### **Content Verification**
   **Goal:** Ensure all in-game content accurately and effectively conveys global warming concepts.
   - **Content Accuracy**: Verify facts and figures are up-to-date and sourced from reliable resources.
   - **Message Consistency**: Ensure all learning elements align with game goals, such as illustrating the effects of pollution.
   - **Tone and Messaging**: Confirm the content is age-appropriate and encourages constructive learning, avoiding fear-based messaging.

#### **Usability Testing**
   **Goal:** Assess ease of use to ensure the game is accessible to all age groups and backgrounds.
   - **Control Responsiveness**: Evaluate control intuitiveness and response times, minimizing learning curve.
   - **UI Design**: Confirm that menus and UI elements are straightforward and unobtrusive.
   - **User Feedback**: Gather insights from users of various demographics to ensure accessibility, engagement, and proper educational flow.

#### **Compatibility Testing**
   **Goal:** Validate consistent game performance across all target devices and platforms.
   - **Platform Testing**: Ensure functionality across all target platforms (Windows, MacOS).
   - **Resolution and Aspect Ratio**: Confirm correct display across different screen sizes.
   - **Input Compatibility**: Verify controls work seamlessly with different input types.

#### **Performance Testing**
   **Goal:** Ensure the game maintains stable performance under typical and high-load conditions.
   - **Frame Rate Stability**: Target steady frame rates (30 FPS or higher) in high-activity scenes.
   - **Load Times**: Measure load times for key game sections to maintain player engagement (ideally under 10 seconds).
   - **Resource Usage**: Monitor resource consumption (CPU, memory) to prevent overuse, especially on mobile devices.

### 4. **Test Criteria**
   - **Entry Criteria:**  
     - Testing environments are set up.
     - Test data and scenarios are ready.
     - Integrated features are prepared for testing.
   - **Exit Criteria:**  
     - High-severity issues are resolved.
     - Educational content has been reviewed and verified by experts.
     - Performance standards are met across target devices.

### 5. **Test Deliverables**

#### **Test Cases and Scenarios**
   - **Purpose:** Outline step-by-step instructions to test each feature, educational content, and player interaction.
   - **Content:** 
     - **Functional Test Cases**: Ensure all gameplay mechanics function, including level progression, scoring, and tutorials.
     - **Educational Content Test Cases**: Verify accuracy and impact of educational messaging at key moments.
     - **Usability Test Cases**: Confirm controls and UI elements are intuitive and user-friendly.
     - **Scenario-based Testing**: Design scenarios to simulate real gameplay, assessing player choices and corresponding educational impact.
   - **Format**: Each test case should include:
     - **Test Case ID** (e.g., "FT-01").
     - **Objective**: Brief description of test purpose.
     - **Preconditions**: Conditions required before testing.
     - **Steps**: Clear testing instructions.
     - **Expected Outcome**: Predicted result if the feature works.
     - **Pass/Fail Status**: Final result of the test.

#### **Multi-language Version of the Game**
   - **Purpose:** Expand accessibility by providing English and French versions.
   - **Content:**
     - **Language Accuracy**: Verify correct translation for all in-game text and UI elements.
     - **Language Selection**: Test language selection in the settings or main menu to confirm it applies across all screens.
     - **Toggle Functionality**: If language can switch mid-play, ensure smooth transitions without breaking gameplay.
   - **Format**: Language test cases should include:
     - **Test Case ID** (e.g., "ML-01").
     - **Objective**: Validate translation and language toggle functionality.
     - **Expected Result**: Accurate translations with smooth transitions.

#### **Demo Version**
   - **Purpose:** Deliver an early version of the game to gather stakeholder feedback for iterative improvements.
   - **Content:**
      - **Included and Excluded Features**: Clearly define what is available in the demo, and outline excluded features.
      - **Feedback Collection**: Gather targeted feedback on gameplay, educational content, and usability.
      - **Bug Reporting**: Allow testers to report bugs, categorizing issues by severity and impact.
      - **Improvement Suggestions**: Collect feedback on potential gameplay, educational, and UI enhancements.
   - **Format**: Package the demo as a standalone or linked version with an accompanying feedback form for structured input.

#### **Defect Reports**
   - **Purpose:** Track identified issues with categorized severity to guide prioritization.
   - **Content:**
     - **Defect ID**: Unique identifier (e.g., "DEF-01").
     - **Severity**: Classify issues as critical, major, or minor.
     - **Description**: Brief issue summary, noting location and observed behavior.
     - **Reproduction Steps**: Detailed steps to recreate the issue.
     - **Expected vs. Actual**: Outline the expected and observed behaviors.
     - **Attachments**: Screenshots or recordings for clarity.
   - **Format**: Log defects in a defect tracking tool (e.g., JIRA, Trello).

#### **Test Summary Report**
   - **Purpose:** Provide a final overview of testing, pass/fail statuses, defect statistics, and insights for stakeholders.
   - **Content:**
     - **Testing Overview**: Summary of testing activities (e.g., "Conducted functional, content, and compatibility tests").
     - **Pass/Fail Status**: Total pass/fail statistics for test cases.
     - **Defect Summary**: Summary of defects, categorized by severity and status.
     - **Outstanding Issues**: List unresolved critical issues that could impact release.
     - **Key Learnings**: Insights gained during testing to improve future development.
   - **Format**: Present the report as a PDF or document accessible to all team members.