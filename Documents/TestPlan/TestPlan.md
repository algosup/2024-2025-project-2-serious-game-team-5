
<div align="center">

# **Test Plan - Serious Game - Team 5**

---

**Title:** Test Plan - Serious Game - Team 5  
**Author:** Maxime CARON  
**Team:** Team 5  
**Created on:** November 12<sup>th</sup>, 2024  
**Last updated:** November 22<sup>th</sup>, 2024  

---

## **Approvals**

| Reviewer          | Role              | Approved | Date         |
|-------------------|-------------------|----------|--------------|
| Maxime CARON      | Quality Assurance |          |              |
| Rémy CHARLES      | Project Manager   |          |              |
| Pierre GORIN      | Program Manager   |          |              |
| Salaheddine NAMIR | Technical Lead    |          |              |
| Elone DELILLE     | Technical Writer  |          |              |
| Alexis LASSELIN   | Software Engineer |          |              |
| Camille GAYAT     | Software Engineer |          |              |

</div>

---

## **1. Introduction**

### **1.1. Project Overview**
This project is a **Serious Game** combining elements of **Strategy** and **City Management**, designed to raise awareness about environmental issues. Players must balance resources, make strategic decisions, and face ecological dilemmas that require moral consideration.  

It is recommended to refer to the [Functional Specifications](../FunctionalSpecifications/FunctionalSpecifications.md) document for a detailed understanding of the game's mechanics and features.

---

### **1.2. Document Purpose**  
This document outlines the test strategy for the Serious Game, detailing testing processes, tools, schedules, and risks. It ensures that the game meets quality standards and satisfies all functional and performance requirements.

---

### **1.3. Scope**
This test plan encompasses the following:
- **Testing Tools:** Identification of tools used in the testing process.
- **Test Strategies:** Techniques and methodologies for validating game functionality and quality.
- **Bug Reporting:** Processes for documenting and resolving defects.
- **Test Schedule:** Planned timeline for testing activities.
- **Risk Management:** Identification of potential risks and mitigation strategies.

---

### **1.4. Objectives**
Key objectives of this test plan include:
- Ensuring high-quality game features and mechanics.
- Identifying and resolving bugs effectively.
- Providing structured test cases for validation.
- Ensuring compatibility across platforms and devices.
- Maintaining performance standards under various conditions.

---

## **2. Glossary**
- **QA:** Quality Assurance  
- **FPS:** Frames Per Second  
- **Regression Testing:** Testing to confirm that changes haven’t introduced new defects.  
- **Smoke Testing:** Preliminary testing to verify core functionality.  

---

## **3. Tools**

### **3.1. Reporting Tools**
- **GitHub Issues:** For bug tracking and categorization by severity and priority.  

### **3.2. Testing Tools**
- **Godot Engine:** Used for testing core mechanics and debugging during development.  
- **Google Forms & Sheets:** For gathering and analyzing user feedback during playtesting.  

### **3.3. Performance Monitoring Tools**
- **Task Manager (Windows), Activity Monitor (MacOS), System Monitor (Linux):** For tracking resource usage (CPU, memory, GPU).  
- **Godot Profiler:** For analyzing performance bottlenecks and memory usage.

---

## **4. Test Strategies**

### **4.1. Smoke Testing**
- **Objective:** Ensure basic game functionality works as expected.  
- **Scope:** Game launch, main menu access, and core gameplay mechanics.  

---

### **4.2. Exploratory Testing**
- **Objective:** Identify hidden defects through unstructured testing.  
- **Scope:** Game mechanics, user experience, and edge case scenarios.

---

### **4.3. Playtesting**
- **Objective:** Gather player feedback to improve usability and engagement.  
- **Methods:**  
  - User feedback forms ([EN](https://forms.gle/9EBFaZDe9YELbBD96), [FR](https://forms.gle/MFbKxKKUcWhG2aTJ8)).  
  - Observing real players interact with the game.  

---

### **4.4. Performance Testing**
- **Objective:** Verify game stability under load and stress conditions.  
- **Scope:** Load testing, stress testing, and monitoring resource usage.

---

### **4.5. Regression Testing**
- **Objective:** Confirm no new defects are introduced by updates.  
- **Scope:** Compatibility, integration, and re-evaluation of performance after updates.

---

## **5. Test Cases**
Detailed test cases are documented in the [Test Cases](./TestCases.md) file. Areas covered include:  
- Game launch and navigation.  
- Main menu functionality.  
- Gameplay mechanics and interactions.  
- User interface responsiveness.  

Testing will be conducted from **Week 5** through **Week 7**.

---

## **6. Bug Reporting**

### **Process**
1. **Identify:** Detect a bug during testing.  
2. **Reproduce:** Confirm the bug by following steps to recreate it.  
3. **Log:** Document the bug using GitHub Issues, providing steps, screenshots, and descriptions.  
4. **Assign:** Assign the bug to a relevant team member.  
5. **Fix:** Resolve the issue promptly.  
6. **Verify:** Test the fix to ensure resolution.  
7. **Close:** Mark the issue as resolved.  

### **Labels**
- **Bug, Enhancement, Duplicate, Invalid, Won’t Fix, Help Wanted.**

---

## **7. Test Schedule**

| Week | Task                                   | Responsible         | Date                 |
|------|---------------------------------------|---------------------|----------------------|
| 2    | Initiate Test Plan                    | Quality Assurance   | November 12, 2024    |
| 3    | Finalize Test Plan                    | Quality Assurance   | November 22, 2024    |
| 4    | Write Test Cases                      | Quality Assurance   | November 29, 2024    |
| 5-7  | Execute Test Cases                    | QA Team             | December 6-18, 2024  |
| 7    | Conduct Playtesting                   | Team Members        | December 16-18, 2024 |
| 7    | Final Presentation Review             | QA Team             | December 17, 2024    |

---

## **8. Risks and Contingencies**  
Refer to the [Risk Management Plan](../Management/RiskManagementPlan.md) for a detailed analysis of risks and mitigation strategies.  
