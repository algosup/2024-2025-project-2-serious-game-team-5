<!-- See: Docs/Specifications/FuncSpecs-Helper.md -->
<div align="center">

# Functional Specifications

---

**Title:** Serious Game - Team 5

**Author:** Pierre GORIN

**Team:** Team 5

**Reviewer:** Maxime CARON

**Created on:** November 6<sup>th</sup>, 2024

**Last updated:** November 12<sup>th</sup>, 2024

**Version:** 0.4

---

### Approvals

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

<br><details>

<summary><h2 id="toc"> Table of Contents <i>(Click to expand)</i></h2></summary>

- [Functional Specifications](#functional-specifications)
    - [Approvals](#approvals)
- [1. - Introduction](#1---introduction)
  - [1.1 - Overview](#11---overview)
      - [What is **Climate Change**?](#what-is-climate-change)
      - [What is **Climate Change**?](#what-is-climate-change-1)
  - [1.2 - Project Definition](#12---project-definition)
    - [1.2.1 - Purpose](#121---purpose)
    - [1.2.2 - Scope](#122---scope)
    - [1.2.3 - Deliverables](#123---deliverables)
  - [1.3 - Project Organization](#13---project-organization)
    - [1.3.1 - Project Representatives](#131---project-representatives)
    - [1.3.2 - Stakeholders](#132---stakeholders)
    - [1.3.3 - Project Team](#133---project-team)
    - [1.3.4 - Project Reviewers](#134---project-reviewers)
- [2. - Game Overview](#2---game-overview)
  - [2.1 - Game Concept](#21---game-concept)
    - [2.1.1 - Game Genre](#211---game-genre)
    - [2.1.2 - Game Audience](#212---game-audience)
      - [2.1.2.1 - Rating](#2121---rating)
      - [2.1.2.2 - Audience](#2122---audience)
    - [2.1.3 - Game Setting](#213---game-setting)
    - [2.1.4 - Game Mechanics](#214---game-mechanics)
    - [2.1.5 - Synopsis](#215---synopsis)
  - [2.2 - Game Objectives](#22---game-objectives)
    - [2.2.1 - Game Goals](#221---game-goals)
    - [2.2.2 - Game Challenges](#222---game-challenges)
  - [2.3 - Game Features](#23---game-features)
    - [2.3.1 - Game Levels](#231---game-levels)
    - [2.3.2 - Game Characters](#232---game-characters)
      - [Main Character: Sola](#main-character-sola)
      - [Mentor: Professor D. Greta](#mentor-professor-d-greta)
      - [Side-Kick: \[!TBD!\]](#side-kick-tbd)
      - [Antagonist: \[!TBD!\]](#antagonist-tbd)

</details>

# 1. - Introduction

## 1.1 - Overview

The aim of this project is to create a **Serious Game** about **Climate Change**. The game will be designed to raise awareness about climate change and its consequences. 

#### What is **Climate Change**?
A **Serious Game** is a game designed for a primary purpose other than pure entertainment. The "serious" adjective is generally prepended to refer to video games used by industries like defense, education, scientific exploration, health care, emergency management, city planning, engineering, religion, and politics.

#### What is **Climate Change**?
**Climate Change** is a long-term change in the average weather patterns that have come to define Earth's local, regional, and global climates. It is caused by the increase of greenhouse gases in the atmosphere, which trap heat. This leads to a rise in the Earth's temperature, which causes the melting of ice caps, the rise of sea levels, and the increase of extreme weather events.

## 1.2 - Project Definition

### 1.2.1 - Purpose

[_(Back to top)_](#toc)

Our game will use the Time Travel concept to show the player the consequences of climate change in the past and the present. The player must complete a series of missions to protect the planet from the impacts of climate change.
The main character is a teenager who will have to complete missions in the past to improve the qulity of life in the present. He will be guided by a crazy scientist who will guide him to complete his missions.
The present will be a post-apocalyptic world where the player will have to complete missions in the past to save the planet from the effects of climate change.

### 1.2.2 - Scope

[_(Back to top)_](#toc)

Below is a MoSCoW table that lists the features that are in scope and out of scope for this project.

| Feature           | Description                                                                 | Must Have | Should Have | Could Have | Won't Have |
| ----------------- | --------------------------------------------------------------------------- | --------- | ----------- | ---------- | ---------- |
| Main Menu         | The player will be able to start a new game, load a game, or exit the game. |           | 🟡           |            |            |
| Computer          | The player can run the game on a computer.                                  | 🟢         |             |            |            |
| Mobile            | The player can run the game on a mobile device.                             |           |             |            | 🔴          |
| PC Controls       | The player can control the character using the keyboard and mouse.          | 🟢         |             |            |            |
| Controller        | The player can control the character using a controller.                    |           |             | 🟠          |            |
| 3D Isometric View | The game will be in 3D isometric view.                                      | 🟢         |             |            |            |
| Main Character    | The player will control a character who will have to complete missions.     | 🟢         |             |            |            |
| Mentor            | The player will have a mentor who will guide him through the game.          | 🟢         |             |            |            |
| Side-Kick         | The player will have a side-kick who will help him during the missions.     |           | 🟡           |            |            |
| 2 Temporality     | The player will be able to travel to the past and the present.              | 🟢         |             |            |            |
| 2 Missions        | The player will have to complete 2 missions in the past.                    | 🟢         |             |            |            |
| 3 Maps            | The players will be able to evolve in 3 different maps.                     | 🟢         |             |            |            |
| 3D Models         | The game will have 3D models for the characters and the environment.        | 🟢         |             |            |            |
| Sound Effects     | The game will have sound effects.                                           |           |             | 🟠          |            |
| Music             | The game will have background music.                                        |           | 🟡           |            |            |
| Save Game         | The player will be able to save his game.                                   |           |             | 🟠          |            |
| Tutorial          | The player will have a tutorial to learn how to play the game.              |           | 🟡           |            |            |
| Achievements      | The player will be able to unlock achievements.                             |           |             |            | 🔴          |
| Multiplayer       | The player will be able to play with other players.                         |           |             |            | 🔴          |



### 1.2.3 - Deliverables

[_(Back to top)_](#toc)

The deliverables of this project are:

| Deliverable               | Due Date   | Link to the Document                                       |
| ------------------------- | ---------- | ---------------------------------------------------------- |
| Functional Specifications | 11/22/2024 | [🔗 Functional Specifications](FunctionalSpecifications.md) |
| Technical Specifications  | 11/29/2024 | [🔗 Technical Specifications](https://guthib.com/)          |
| Test Plan                 | 12/06/2024 | [🔗 Test Plan](https://guthib.com/)                         |
| User Manual               | 12/13/2024 | [🔗 User Manual](https://guthib.com/)                       |
| Code                      | 12/13/2024 | [🔗 Code](https://guthib.com/)                              |

## 1.3 - Project Organization

### 1.3.1 - Project Representatives

[_(Back to top)_](#toc)

| Owners                                                                                  | Representative                                                                                       |
| --------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [ALGOSUP](https://www.algosup.com)                                                      | Represented by [Franck JEANNIN](https://www.linkedin.com/in/franck-jeannin/)                         |
| [Konstantinos DIMOPOULOS](https://www.linkedin.com/in/konstantinos-dimopoulos-42b62b4/) | Represented by himself                                                                               |
| [Rémy Charles](https://www.linkedin.com/in/r%C3%A9my-charles-2a8960232/)                | Represented by [Pierre GORIN](https://www.linkedin.com/in/pierre-gorin-61a784221/) (Program Manager) |

### 1.3.2 - Stakeholders

[_(Back to top)_](#toc)

| Stakeholder             | Description                                           |
| ----------------------- | ----------------------------------------------------- |
| ALGOSUP                 | They are the owners of the project.                   |
| Konstantinos D.         | He is the consultant for the game design.             |
| Team 5                  | They are the developers of the project.               |
| 3D Molier International | Partners for the 3D model of the secondary character. |
| End-Users               | They are the players of the game.                     |
| Reviewers               | They are the external reviewers of the project.       |

### 1.3.3 - Project Team

[_(Back to top)_](#toc)

| Role              | Description                                                                                                                                                                                                                    | Name                                                                                                     |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------- |
| Project Manager   | - He is in charge of organization, planning, and budgeting.<br>- Ensure communication within the team and keep them motivated.                                                                                                 | [Rémy CHARLES](https://github.com/RemyCHARLES)                                                           |
| Program Manager   | - Makes sure the project meets the client's expectations.<br>- He must to understand the end-user needs.<br>- He is responsible for writing the Functional Specifications.                                                     | [Pierre GORIN](https://github.com/Pierre2103)                                                            |
| Technical Lead    | - He is in charge of making the technical decisions in the project.<br>- He translates the Functional Specifications into Technical Specifications.                                                                            | [Salaheddine NAMIR](https://github.com/T3rryc)                                                           |
| Technical Writer  | - He is in charge of writing the documentation of the project.<br>- Based on the specifications, he writes a Manual for the end-users.                                                                                         | [Elone DELILLE](https://github.com/HiNett)                                                               |
| Software Engineer | - Responsible for writing the code and the unit tests, commenting, and documenting his code.<br>- He participates in the technical choices.                                                                                    | [Alexis LASSELIN](https://github.com/AlexisLasselin)<br>[Camille GAYAT](https://github.com/CamilleGayat) |
| Quality Assurance | - Tests all the functionalities of the product to find bugs and issues. Defines the test strategy and writes the Test Plan.<br>- He documents all the encountered bugs and issues, then checks that the errors are well fixed. | [Maxime CARON](https://github.com/MaximeAlgosup)                                                         |

### 1.3.4 - Project Reviewers

Our quality assurance will review the project to ensure that the specifications and conventions are respected.
External project reviewers have been appointed by the project owner to review our specifications and provide us with feedback.

# 2. - Game Overview

## 2.1 - Game Concept

### 2.1.1 - Game Genre

The game will be a **Serious Game**. It will be a mix of **Adventure** and **Puzzle** genres. The player will have to complete various missions to save the planet from the effects of climate change. The game will use the Time Travel concept to show the player the consequences of climate change in the past and the present.

### 2.1.2 - Game Audience

#### 2.1.2.1 - Rating


The game will carry a **T (Teen 13+) rating** in the United States and a **PEGI 12 rating** in Europe.

<img src="img/icons/rating/rated-T.png" style="height:18px;"/> A **T (Teen 13+) rating** allows content suitable for players aged 13 and up, which may include violence, suggestive themes, crude humor, minimal blood, simulated gambling, and occasional strong language.

<img src="img/icons/rating/pegi-12.png" style="height:18px;"/> A **PEGI 12 rating** permits fantasy violence, non-realistic violence toward human-like characters, and mild nudity with some graphic detail.


In our case, the game will be mild, containing no violence or nudity. We chose this rating to allow for occasional strong language to enhance character expression and realism, while still remaining accessible to a younger audience.

#### 2.1.2.2 - Audience

The game is intended for teenagers and young adults who are interested in environmental issues and want to learn more about climate change. The game will be designed to raise awareness about climate change and its consequences.


### 2.1.3 - Game Setting

The game will be available on computers, the supported operating systems will be Windows <img src="img/icons/os/windows.png" style="height:18px;"/> and MacOS <img src="img/icons/os/macos.png" style="height:18px;"/>. 
The player will be able to set the language of the game in the settings, the game will be available in American English <img src="img/icons/flags/usa.png" style="width:18px;"/> and French <img src="img/icons/flags/france.png" style="width:18px;"/>.

### 2.1.4 - Game Mechanics

The game will have the following mechanics:

- **Time Travel**: The player will be able to travel to the past to complete missions.
- **Missions**: The player will complete missions and try to save the planet from the effects of climate change.
- **Adaptive Dialogues**: The dialogues will adapt based on the player's choices and actions.
- **Puzzle Solving**: The player will have to solve puzzles to complete missions.
- **Evolving Environment**: The environment will change based on the player's actions and decisions.

### 2.1.5 - Synopsis

The player will control Sola, she evolves in the year 3034, in a post-apocalyptic world where the consequences of climate change are visible. She will meet Professor D. Greta, a scientist who built Past-Box, a time machine that allows her to travel in the time to correct the past mistakes that led to the current situation. She will visit different eras and meet important figures to interact with.

## 2.2 - Game Objectives

### 2.2.1 - Game Goals

The primary goal of the game is to raise awareness about climate change by engaging the player in a time-travel adventure to correct past actions and mitigate environmental impacts. To achieve this, the game focuses on the following goals:

1. **Educational Impact**: Players will gain insights into the causes and effects of climate change, and understand the importance of sustainable practices and environmental responsibility. The storyline and missions are designed to provide historical and scientific context, helping players learn about the environmental challenges of different eras.

2. **Player Engagement**: The game aims to keep players engaged through an interactive and immersive experience. By offering various missions and puzzles, players remain motivated to progress and make meaningful changes to the game world, which reflects their actions over time.

3. **Empowerment Through Choice**: Players can make decisions that influence the game’s narrative and the outcomes of the missions. This feature is designed to empower players by showing how individual actions can contribute to broader environmental change.

4. **Problem-Solving Skills**: Through the puzzle-solving and mission-completion mechanics, players will develop critical thinking and problem-solving skills as they face environmental challenges and strategize to overcome them.

5. **Storytelling and Emotional Connection**: The game uses compelling storytelling and relatable characters to create an emotional connection with players, making the themes of climate change more impactful and memorable. By connecting with Sola’s journey, players will be more likely to carry the game’s environmental message into their real lives.

### 2.2.2 - Game Challenges

The game presents a series of challenges designed to immerse players in the journey to combat climate change. These challenges encourage players to think critically, adapt strategies, and learn from each scenario. The main types of challenges are:

1. **Resource Management**: Players must carefully manage limited resources such as [!TBD!]. Making sustainable choices under resource constraints simulates real-world environmental challenges and demonstrates the consequences of resource depletion.

2. **Moral Dilemmas**: Throughout the game, players encounter moral and ethical choices with potential environmental consequences. These dilemmas challenge players to consider the broader impact of their actions and instill a sense of responsibility toward sustainable decision-making.

3. **Adaptive Difficulty**: As players progress, the game introduces more complex puzzles, time-sensitive missions, and challenging scenarios. This gradual increase in difficulty keeps players engaged and provides a sense of accomplishment as they develop their skills.

By facing these challenges, players not only experience an engaging adventure but also gain a deeper understanding of climate change, its causes, and its far-reaching effects. 

## 2.3 - Game Features


### 2.3.1 - Game Levels

### 2.3.2 - Game Characters

#### Main Character: Sola

#### Mentor: Professor D. Greta

#### Side-Kick: [!TBD!]

#### Antagonist: [!TBD!]