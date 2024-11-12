<div align="center">

# Test Plan - Serious Game - Team 5

---

**Title:** Test Plan - Serious Game - Team 5

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

### 2. **Glossary**

| Term | Definition | Source |
| ---- | ---------- | ------ |
| QA | Quality Assurance |  |
| UI | User Interface |  |
| UX | User Experience |  |
| FPS | Frames Per Second |  |
| CPU | Central Processing Unit |  |

### 3. **Test Items**
   - **Features to be Tested**:
     - **Gameplay Mechanics**: Ensure game mechanics are both functional and educational, reinforcing learning objectives about global warming.
     - **Educational Content**: Confirm accuracy, relevance, and effectiveness of information related to global warming.
     - **User Interface (UI) and User Experience (UX)**: Validate intuitive UI design and smooth navigation for players.
     - **Visual and Audio Elements**: Ensure graphics, animations, and sounds support the educational and immersive aspects of gameplay.
     - **Multimedia**: Verify in-game resources (e.g., videos, infographics) function correctly and align with learning goals.
     - **Performance**: Check stability, load times, and smooth gameplay across different devices.

### 4. **Test Deliverables**

#### **Test Cases and Scenarios**
   - **Purpose:** Outline step-by-step instructions to test each feature, educational content, and player interaction.
   - **Content:** 
     - **Functional Test Cases**: Ensure all gameplay mechanics function, including level progression, and tutorials.
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

#### **Test Summary Report**
   - **Purpose:** Provide a final overview of testing, pass/fail statuses, defect statistics, and insights for stakeholders.
   - **Content:**
     - **Testing Overview**: Summary of testing activities (e.g., "Conducted functional, content, and compatibility tests").
     - **Pass/Fail Status**: Total pass/fail statistics for test cases.
     - **Defect Summary**: Summary of defects, categorized by severity and status.
     - **Outstanding Issues**: List unresolved critical issues that could impact release.
     - **Key Learnings**: Insights gained during testing to improve future development.
   - **Format**: Present the report as a PDF or document accessible to all team members.

### 5. **Testing Strategy**

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

### 6. **Test Criteria**

   - **Entry Criteria:**  
     For the testing process to begin effectively, the following conditions must be met:
       - **Test Environment Readiness:** Testing environments are fully set up, including access to all necessary platforms (Windows, MacOS), and the latest game build is available in each environment.
       - **Test Data and Scenario Preparation:** All test data and pre-defined scenarios required for testing are ready. This includes any mock data, simulated user accounts, or gameplay progressions needed to validate different game features and learning paths.
       - **Integrated Feature Stability:** All game features targeted for testing are successfully integrated and stable, with no critical or blocking bugs that would prevent comprehensive testing. This includes educational content, game mechanics, UI components, and compatibility with input methods.
       - **Access for Testers:** Testers have appropriate permissions, accounts, and tools set up, allowing them to log issues, track test cases, and document findings as needed.

   - **Exit Criteria:**  
     Testing is considered complete, and the game is ready for release when:
       - **Resolution of High-Severity Issues:** All critical and high-severity issues identified during testing have been resolved, verified, and closed. Any remaining minor issues are documented, and their potential impact on gameplay or educational goals is considered acceptable.
       - **Educational Content Verification:** Subject matter experts have reviewed and approved all educational content to ensure accuracy, relevance, and alignment with the game’s learning objectives on global warming. Any factual discrepancies or miscommunications have been corrected.
       - **Performance Benchmarks Met:** The game meets or exceeds established performance standards, including smooth gameplay (30 FPS or higher) on supported devices, acceptable load times (within specified limits), and optimized resource usage (e.g., CPU, memory, battery) across platforms.

### 7. **Allocated Resources**

   - **Testers:**  
     - **QA Team Members:** QA testers are responsible for executing functional, content, and usability tests. They will verify game mechanics, educational content accuracy, UI/UX responsiveness, and user accessibility.
     - **External Testers:** A diverse group of external testers, including users with various devices and system configurations, will perform content and entertainment testing to provide feedback on gameplay, educational impact, and overall enjoyment.

   - **Devices:**  
     - **Computers:** Windows and MacOS computers representing a range of specifications (e.g., different processor speeds, RAM capacities) for platform-specific testing, ensuring compatibility and performance consistency.

   - **Tools:**  
     - **Google Forms:** Used for collecting feedback from external testers on gameplay, educational content, and usability.
     - **Google Sheets:** Used for tracking test cases, results, and defect reports, allowing for real-time collaboration and visibility across the QA team.
     - **GitHub:** Version control system for managing game builds, tracking changes, and ensuring the latest version is available for testing.

