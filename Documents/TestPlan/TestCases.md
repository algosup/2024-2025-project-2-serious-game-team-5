<div align="center">

# Test Cases - Serious Game - Team 5

---

**Title:** Test Cases - Serious Game - Team 5  

**Author:** Maxime CARON  

**Team:** Team 5  

**Created on:** November 12<sup>th</sup>, 2024  

**Last updated:** December 6<sup>th</sup>, 2024  

---

## Approvals

| Reviewer          | Role              | Approved | Date       |
| ----------------- | ----------------- | -------- | ---------- |
| Maxime CARON      | Quality Assurance |          |            |
| Rémy CHARLES      | Project Manager   |          |            |
| Pierre GORIN      | Program Manager   |          |            |
| Salaheddine NAMIR | Technical Lead    |          |            |
| Elone DELILLE     | Technical Writer  |          |            |
| Alexis LASSELIN   | Software Engineer |          |            |
| Camille GAYAT     | Software Engineer |          |            |

</div>

<br>

<details>
<summary><h2 id="toc"> Table of Contents <i>(Click to expand)</i></h2></summary>

- [Test Cases - Serious Game - Team 5](#test-cases---serious-game---team-5)
  - [Approvals](#approvals)
  - [**1. Executive Summary**](#1-executive-summary)
  - [**2. Introduction**](#2-introduction)
    - [**2.1 Project Overview**](#21-project-overview)
    - [**2.2 Document Purpose**](#22-document-purpose)
    - [**2.3 Scope**](#23-scope)
  - [3. Test Cases](#3-test-cases)
    - [3.1 **Core Mechanics**](#31-core-mechanics)
      - [3.1.1 **Indicators**](#311-indicators)
      - [3.1.2 **Player Actions**](#312-player-actions)
      - [3.1.3 **User Interface (UI)**](#313-user-interface-ui)
      - [3.1.4 **Edge Cases for Actions**](#314-edge-cases-for-actions)
      - [3.1.5 **Indicator Scaling**](#315-indicator-scaling)
    - [3.2 **Gameplay**](#32-gameplay)
      - [3.2.1 **Progression**](#321-progression)
    - [3.3 **Non-Functional Tests**](#33-non-functional-tests)
      - [3.3.1 **Performance**](#331-performance)
      - [3.3.2 **User Experience (UX)**](#332-user-experience-ux)
    - [3.4 **Integration Tests**](#34-integration-tests)
      - [3.4.1 **Indicator-Action Integration**](#341-indicator-action-integration)
  
</details>

---

## **1. Executive Summary**

This document outlines the test cases for the serious game developed by Team 5. These cases address **functional**, **non-functional**, and **integration** aspects, ensuring that the game meets user expectations and quality standards.

---

## **2. Introduction**

### **2.1 Project Overview**

The serious game is a web-based, educational game combining elements of strategy and environmental awareness. It engages players with challenging gameplay mechanics and helps them understand global ecological issues.  

For detailed specifications, refer to the [Functional Specifications](../FunctionalSpecifications/FunctionalSpecifications.md) and the [Test Plan](TestPlan.md).

---

### **2.2 Document Purpose**

This document aims to:  

- Provide detailed test cases to validate game functionality, performance, and user experience.  
- Ensure comprehensive testing to identify and resolve defects.  
- Maintain alignment with project requirements.

---

### **2.3 Scope**

The test cases cover the following areas:  

- **Main Menu:** Navigation and interactions.  
- **Settings:** Customization options.  
- **Game Mechanics:** Core gameplay, rules, and functionality.  
- **Performance:** Game stability under varying conditions.  
- **Localization:** Multilingual support and cultural alignment.

---

## 3. Test Cases  

### 3.1 **Core Mechanics**  

#### 3.1.1 **Indicators**  

| Test Case ID | Test Case Name                  | Description                                                   | Input                    | Expected Output                            |  
| ------------ | ------------------------------- | ------------------------------------------------------------- | ------------------------ | ------------------------------------------ |  
| IND-01       | Real-Time Indicator Display     | Verify the real-time updates of carbon emissions, happiness, and money. | Player makes changes to the city (e.g., renovates a building). | Indicators update instantly at the top of the screen without lag. |  
| IND-02       | No Trigger Events from Indicators | Ensure extreme indicator values do not trigger events.         | Happiness drops to 0%, carbon emissions reach a high value. | No game events or interruptions occur due to indicator changes. |  

#### 3.1.2 **Player Actions**  

| Test Case ID | Test Case Name                  | Description                                                   | Input                    | Expected Output                            |  
| ------------ | ------------------------------- | ------------------------------------------------------------- | ------------------------ | ------------------------------------------ |  
| ACT-01       | Building Renovation             | Test the renovation process and indicator updates.            | Select an old building → Choose "Renovate." | Carbon emissions decrease; happiness may increase; money decreases. |  
| ACT-02       | Adding New Buildings            | Verify construction of new buildings on empty plots.          | Select an empty space → Choose "Build Residential." | A residential building is added; money decreases; emissions may increase. |  
| ACT-03       | Green Space Creation            | Test adding green spaces to the city.                         | Select an empty space → Choose "Add Green Space." | Green space appears; emissions decrease; money decreases; happiness increases. |  
| ACT-04       | Road Construction               | Test adding roads and their impact.                           | Select an empty space → Choose "Add Road." | A road is added; emissions increase slightly; money decreases. |  

#### 3.1.3 **User Interface (UI)**  

| Test Case ID | Test Case Name                  | Description                                                   | Input                    | Expected Output                            |  
| ------------ | ------------------------------- | ------------------------------------------------------------- | ------------------------ | ------------------------------------------ |  
| UI-01        | Dynamic Menu Behavior           | Verify the menu changes based on the type of selected place.  | Select a building, green space, or empty plot. | Menu at the bottom displays relevant actions for the selected place type. |  
| UI-02        | Localization                    | Test language switching in the settings menu.                 | Change language setting to French.         | Game UI, including menus and labels, updates to French. |  
| UI-03        | Button Readability              | Ensure buttons are readable in all supported languages.       | Switch to French; observe the UI.          | Buttons adapt to the language with proper font scaling and no text overflow. |  
| UI-04        | Invalid Action Prevention       | Test preventing invalid actions in the menu.                  | Select an empty space → Choose "Renovate." | Action is not performed; an error message explains why. |  
| UI-05        | Corrupted Save File Handling    | Test behavior when loading a corrupted save file.             | Load an intentionally corrupted file.      | Game provides a clear error message and prevents crashes. |


#### 3.1.4 **Edge Cases for Actions**  

| Test Case ID | Test Case Name                  | Description                                                   | Input                           | Expected Output                            |  
| ------------ | ------------------------------- | ------------------------------------------------------------- | ------------------------------- | ------------------------------------------ |  
| EDGE-01      | No Funds for Actions            | Verify behavior when the player has insufficient money.       | Try building a new structure with $0.00.  | Action is denied, and a warning message is displayed. |  
| EDGE-02      | Maximum Building Capacity       | Test adding buildings beyond the map's available spaces.      | Fill all empty spaces with buildings.      | Further attempts to build are disabled; relevant message appears. |  
| EDGE-03      | High Carbon Emissions           | Test the impact of excessive carbon emissions on gameplay.    | Continuously add polluting buildings.     | Carbon emissions continue to rise; no event is triggered. |
| EDGE-04      | Extreme Carbon Emission Focus   | Test the game’s response to prioritizing carbon reduction only. | Remove all roads, focus only on green spaces. | Carbon emissions drop significantly; happiness may fluctuate. |  
| EDGE-05      | Ignoring Budget                 | Test what happens if the player spends all money early on.    | Build expensive structures repeatedly until money is $0.00. | Actions become disabled; game progression remains unaffected. |  

#### 3.1.5 **Indicator Scaling**  

| Test Case ID | Test Case Name                  | Description                                                   | Input                           | Expected Output                            |  
| ------------ | ------------------------------- | ------------------------------------------------------------- | ------------------------------- | ------------------------------------------ |
| IND-01 | Real-Time Indicator Display	| Verify the real-time updates of carbon emissions, happiness, and money. |	Player makes changes to the city (e.g., renovates a building). |	Indicators update instantly at the top of the screen without lag. |
| IND-02 |	No Trigger Events from Indicators |	Ensure extreme indicator values do not trigger events. | Happiness drops to 0%, carbon emissions reach a high value. | No game events or interruptions occur due to indicator changes.|
| IND-03       | Large Happiness Changes         | Verify indicators handle abrupt increases or decreases.       | Add 10 green spaces in a row.             | Happiness increases significantly; no UI glitches occur. |  
| IND-04       | Indicator Overflow              | Test maximum and minimum values for indicators.               | Reach 0% happiness or 100% carbon emissions. | Indicators cap at the defined range (e.g., 0%-100%); UI remains functional. |  

---

### 3.2 **Gameplay**  

#### 3.2.1 **Progression**  

| Test Case ID | Test Case Name                  | Description                                                   | Input                    | Expected Output                            |  
| ------------ | ------------------------------- | ------------------------------------------------------------- | ------------------------ | ------------------------------------------ |  
| GP-01        | Continuous Gameplay             | Verify that gameplay progresses without time constraints.     | Make decisions at a slow pace.             | The game world continues evolving; no countdown or forced actions occur. |  
| GP-02        | Endgame Summary                 | Confirm the game ends after 10 years with a summary screen.   | Reach the 10-year mark.                    | A summary screen appears displaying carbon reduction performance and other stats. |  

---

### 3.3 **Non-Functional Tests**  

#### 3.3.1 **Performance**  

| Test Case ID | Test Case Name                  | Description                                                   | Input                    | Expected Output                            |  
| ------------ | ------------------------------- | ------------------------------------------------------------- | ------------------------ | ------------------------------------------ |  
| PERF-01      | Indicator Update Speed          | Test responsiveness of real-time indicator updates.           | Renovate a building.                      | Indicators update within 0.1 seconds. |  
| PERF-02      | Menu Load Time                  | Verify the time it takes for the action menu to load.          | Select any place type.                    | Menu loads within 0.5 seconds. |
| PERF-03      | Large Map Performance           | Test game responsiveness with a fully developed city.         | Build on every possible plot of land.     | Game runs smoothly without noticeable FPS drops. |  
| PERF-04      | Menu Responsiveness             | Verify the menu opens quickly regardless of city size.        | Select any place after 8 years of gameplay. | Menu opens within 0.5 seconds. |  
| PERF-05      | High Action Frequency           | Test how the game handles rapid consecutive actions.          | Quickly build 20 roads and buildings in sequence. | Game maintains performance; no freezes or crashes occur. |  

#### 3.3.2 **User Experience (UX)**  

| Test Case ID | Test Case Name                  | Description                                                   | Input                    | Expected Output                            |  
| ------------ | ------------------------------- | ------------------------------------------------------------- | ------------------------ | ------------------------------------------ |  
| UX-01        | Ease of Navigation              | Ensure players can intuitively navigate the menu.             | Select multiple place types in succession. | Players can seamlessly interact with the menu without confusion. |  
| UX-02        | Immediate Feedback              | Verify that actions provide immediate visual and auditory feedback. | Renovate a building or add a green space. | Changes are reflected visually, and a sound effect plays confirming the action. |  

---

### 3.4 **Integration Tests**  

#### 3.4.1 **Indicator-Action Integration**  

| Test Case ID | Test Case Name                  | Description                                                   | Input                    | Expected Output                            |  
| ------------ | ------------------------------- | ------------------------------------------------------------- | ------------------------ | ------------------------------------------ |  
| INT-01       | Indicator Updates               | Ensure player actions correctly impact indicators.            | Renovate a building, add green space.      | Indicators adjust accurately to reflect changes caused by the action. |  
| INT-02       | Green Space and Happiness Impact | Test how multiple green spaces affect happiness.              | Add 5 green spaces to the city.           | Happiness increases proportionally; no bugs occur in indicator calculations. |  
| INT-03       | Budget-Limited Decisions        | Test interdependency between budget and actions.              | Spend all money on roads.                 | Building options become disabled; warning messages guide the player. |  
