<div align="center">

# **Test Plan - Serious Game - Team 5**

---

**Title:** Test Plan - Serious Game - Team 5  
**Author:** Maxime CARON  
**Team:** Team 5  
**Created on:** November 12<sup>th</sup>, 2024  
**Last updated:** November 29<sup>th</sup>, 2024  

---

## **Approvals**

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

<br>

<details>
<summary><h2 id="toc"> Table of Contents <i>(Click to expand)</i></h2></summary>

- [**Test Plan - Serious Game - Team 5**](#test-plan---serious-game---team-5)
  - [**Approvals**](#approvals)
  - [**1. Executive Summary**](#1-executive-summary)
  - [**2. Introduction**](#2-introduction)
    - [**2.1. Project Overview**](#21-project-overview)
    - [**2.2. Document Purpose**](#22-document-purpose)
    - [**2.3. Scope**](#23-scope)
    - [**2.4. Objectives**](#24-objectives)
  - [**3. Glossary**](#3-glossary)
  - [**4. Tools**](#4-tools)
    - [**4.1. Reporting Tools**](#41-reporting-tools)
    - [**4.2. Testing Tools**](#42-testing-tools)
    - [**4.3. Performance Monitoring**](#43-performance-monitoring)
    - [**4.4. Tools Considered but Not Used**](#44-tools-considered-but-not-used)
  - [**5. Test Strategies**](#5-test-strategies)
    - [**5.1. Smoke Testing**](#51-smoke-testing)
    - [**5.2. Functional Testing**](#52-functional-testing)
    - [**5.3. Exploratory Testing**](#53-exploratory-testing)
    - [**5.4. Playtesting**](#54-playtesting)
    - [**5.5. Performance Testing**](#55-performance-testing)
    - [**5.6. Localization Testing**](#56-localization-testing)
    - [**5.7. Regression Testing**](#57-regression-testing)
  - [**6. Test Cases**](#6-test-cases)
  - [**7. Bug Reporting**](#7-bug-reporting)
    - [**Process**](#process)
    - [**Bug Labels**](#bug-labels)
      - [**1. Bug**](#1-bug)
      - [**2. Enhancement**](#2-enhancement)
      - [**3. Duplicate**](#3-duplicate)
      - [**4. Invalid**](#4-invalid)
      - [**5. WontFix**](#5-wontfix)
      - [**6. Critical**](#6-critical)
      - [**7. Major**](#7-major)
      - [**8. Minor**](#8-minor)
      - [**9. Cosmetic**](#9-cosmetic)
      - [**10. Help Wanted**](#10-help-wanted)
  - [**8. Test Schedule**](#8-test-schedule)
  - [**9. Risks and Contingencies**](#9-risks-and-contingencies)
    - [**Key Risks**](#key-risks)
  
</details>

---
## **1. Executive Summary**

This test plan defines the structured approach for validating the quality, performance, and functionality of the Serious Game by **Team 5**, focusing on educational engagement with environmental awareness. Testing ensures that gameplay mechanics, user experience, and cross-platform compatibility align with project objectives.

Key aspects of the plan:
- Smoke, functional, performance, and playtesting strategies.
- Comprehensive bug reporting and tracking.
- Detailed schedules and risk mitigation strategies.

Stakeholders can use this document to monitor progress, approve results, and ensure the game meets its objectives.

---

## **2. Introduction**

### **2.1. Project Overview**
This project is a **Serious Game** combining **Strategy** and **City Management** elements to raise awareness about environmental issues. Players must balance resources, make strategic decisions, and face ecological dilemmas with moral implications.

For detailed mechanics and feature descriptions, refer to the [Functional Specifications](../FunctionalSpecifications/FunctionalSpecifications.md).

### **2.2. Document Purpose**  
This document provides a structured strategy for testing, detailing tools, methods, and schedules, ensuring high-quality deliverables within the project timeline.

### **2.3. Scope**
The scope includes:
- Validating game mechanics and features.
- Ensuring cross-platform compatibility.
- Testing performance under various conditions.
- Documenting and resolving defects efficiently.

### **2.4. Objectives**
Key objectives:
- Ensure features meet design specifications.
- Provide seamless gameplay across all platforms.
- Resolve defects efficiently with minimal regression.
- Collect actionable feedback for improvements.

---

## **3. Glossary**

| **Term**                | **Definition**                                                  |
| ----------------------- | --------------------------------------------------------------- |
| **QA**                  | Quality Assurance                                               |
| **FPS**                 | Frames Per Second                                               |
| **Regression Testing**  | Ensuring that new updates do not introduce defects.             |
| **Smoke Testing**       | Preliminary testing of core functionality.                      |
| **Exploratory Testing** | Unstructured testing to discover potential issues.              |
| **Playtesting**         | Gathering user feedback by observing gameplay and satisfaction. |

---

## **4. Tools**

### **4.1. Reporting Tools**
- **GitHub Issues:** Used for defect tracking, categorized by severity and priority.

### **4.2. Testing Tools**
- **Godot Engine:** For debugging and testing mechanics.  
- **Google Forms & Sheets:** To gather structured user feedback during playtesting.

### **4.3. Performance Monitoring**
- **System Monitors:** Track CPU, GPU, and memory usage on various platforms.
- **Godot Profiler:** Analyze performance bottlenecks.

### **4.4. Tools Considered but Not Used**
- **Godot Test Framework:** Rejected due to limited time and simplicity of manual testing for the current scope.
- **Jira:** Excluded for cost and overcomplexity for a small-scale project.

---

## **5. Test Strategies**

### **5.1. Smoke Testing**
- **Objective:** Ensure the core game features work.  
- **Examples:** Launching the game, navigating the main menu, starting gameplay.

### **5.2. Functional Testing**
- **Objective:** Validate specific game mechanics.  
- **Examples:** Resource management, decision-making outcomes, and environmental impact.

### **5.3. Exploratory Testing**
- **Objective:** Identify unexpected bugs through unstructured gameplay.  
- **Examples:** Testing edge cases, trying unusual player inputs, and exploiting mechanics.

### **5.4. Playtesting**
- **Objective:** Gather feedback to refine usability and balance.  
- **Methods:** Structured surveys ([EN](https://forms.gle/9EBFaZDe9YELbBD96), [FR](https://forms.gle/MFbKxKKUcWhG2aTJ8)), observing gameplay, and qualitative interviews.

### **5.5. Performance Testing**
- **Objective:** Assess stability under load.  
- **Examples:** Filling maps, maxing out units, and monitoring FPS/memory.

### **5.6. Localization Testing**
- **Objective:** Ensure correct functionality across languages.  
- **Examples:** Checking translations, UI alignment, and audio/text synchronization.

### **5.7. Regression Testing**
- **Objective:** Confirm no new issues after updates.  
- **Examples:** Testing fixed bugs and verifying feature integration.

---

## **6. Test Cases**

**Detailed test cases** include:
- Validating UI responsiveness.
- Checking resource management and decision-making impacts.
- Evaluating tutorial clarity and onboarding flow.
- Verifying device compatibility (PC/Mac/Linux).

Refer to [Test Cases](./TestCases.md) for a complete breakdown.

---

## **7. Bug Reporting**

### **Process**
1. **Identify:** Find an issue.  
2. **Reproduce:** Ensure it is consistently reproducible.  
3. **Log:** Document on GitHub with detailed steps, screenshots, and environment info.  
4. **Prioritize:** Assign severity levels (Critical, Major, Minor).  
5. **Assign:** Allocate to a responsible team member.  
6. **Fix:** Resolve the issue.  
7. **Verify:** Confirm resolution and close the issue.

### **Bug Labels**

Each bug reported will be categorized using the following labels to streamline prioritization and resolution:

#### **1. Bug**
- **Definition:** Represents a defect or issue in the game that deviates from the expected functionality or performance.  
- **Examples:**  
  - Incorrect resource calculations in gameplay.  
  - A button in the UI does not respond to user input.  

#### **2. Enhancement**
- **Definition:** Suggests an improvement or additional feature that is not part of the original game requirements but enhances user experience or functionality.  
- **Examples:**  
  - Adding a tooltip for new players.  
  - Implementing smoother animations for character actions.  

#### **3. Duplicate**
- **Definition:** Indicates that the reported issue is already logged in the system under another entry.  
- **Examples:**  
  - Two separate reports for the same crash scenario.  

#### **4. Invalid**
- **Definition:** The issue reported is not a defect or is caused by incorrect usage or environmental factors unrelated to the game.  
- **Examples:**  
  - A player’s outdated graphics drivers causing display issues.  
  - Misunderstanding a gameplay mechanic as a bug.  

#### **5. WontFix**
- **Definition:** Represents an issue that has been acknowledged but will not be resolved due to its low impact, high complexity, or misalignment with project goals.  
- **Examples:**  
  - Minor graphical glitches that do not affect gameplay.  
  - Non-critical performance issues on outdated devices.  

#### **6. Critical**
- **Definition:** Identifies a high-priority issue that severely impacts gameplay, usability, or stability and requires immediate attention.  
- **Examples:**  
  - The game crashes consistently during a specific level.  
  - Save files are corrupted upon loading.  

#### **7. Major**
- **Definition:** Signifies a significant problem that affects gameplay but does not completely block progress or render the game unplayable.  
- **Examples:**  
  - Incorrect environmental effects that mislead player strategy.  
  - A non-functional menu option that can be bypassed with alternative navigation.  

#### **8. Minor**
- **Definition:** Flags a low-priority issue that does not significantly impact gameplay or user experience but should be addressed for polish.  
- **Examples:**  
  - Typos in text descriptions or subtitles.  
  - Slight misalignment of UI elements on certain screen sizes.  

#### **9. Cosmetic**
- **Definition:** Used for purely visual issues that do not impact functionality or performance.  
- **Examples:**  
  - Texture clipping in non-interactive areas.  
  - Misaligned icons in the game settings menu.

#### **10. Help Wanted**
- **Definition:** Indicates an issue that requires input, feedback, or external assistance to resolve.  
- **Examples:**  
  - A bug involving complex mechanics where additional debugging expertise is needed.  
  - Localization bugs requiring support from translation experts.

---

## **8. Test Schedule**

| **Week** | **Task**                       | **Responsible** | **Date**             |
| -------- | ------------------------------ | --------------- | -------------------- |
| 2        | Define Test Plan               | QA              | November 12, 2024    |
| 3        | Finalize Test Plan             | QA              | November 22, 2024    |
| 4        | Create Test Cases              | QA              | November 29, 2024    |
| 5-7      | Execute Test Cases             | QA              | December 6-18, 2024  |
| 7        | Conduct Playtesting            | Team Members    | December 16-18, 2024 |
| 7        | Final Presentation & QA Review | QA              | December 17, 2024    |

---

## **9. Risks and Contingencies**

### **Key Risks**
- **Schedule Delays:** Mitigation by weekly progress check-ins.
- **Performance Issues:** Regular profiling to address bottlenecks early.
- **User Misunderstanding:** Iterative playtesting with clear tutorials.

For a detailed breakdown, refer to the [Risk Management Plan](../Management/RiskManagementPlan.md).
