<!-- See: Docs/Specifications/FuncSpecs-Helper.md -->
<div align="center">

# Functional Specifications

---

**Title:** Carbon Control

**Team:** Team 5

**Author:** Pierre GORIN

**Reviewer:** Maxime CARON

**Created on:** November 6<sup>th</sup  >, 2024

**Last updated:** November 26<sup>th</sup>, 2024

**Version:** 1.0.2

### Approvals

| Reviewer          | Role              | Approved | Date |
| ----------------- | ----------------- | -------- | ---- |
| Maxime CARON      | Quality Assurance |    ✅    |   2024/11/22   |
| Rémy CHARLES      | Project Manager   |    ✅    |  2024/11/22    |
| Pierre GORIN      | Program Manager   |    ✅    |  2024/11/22    |
| Salaheddine NAMIR | Technical Lead    |    ✅    |  2024/11/22    |
| Elone DELILLE     | Technical Writer  |    ✅    |  2024/11/22    |
| Alexis LASSELIN   | Software Engineer |    ✅    |  2024/11/22    |
| Camille GAYAT     | Software Engineer |    ✅    |  2024/11/22    |

</div>

<br><details>

<summary><h2 id="toc"> Table of Contents <i>(Click to expand)</i></h2></summary>

- [Functional Specifications](#functional-specifications)
    - [Approvals](#approvals)
- [1. - Introduction](#1---introduction)
  - [1.1 - Overview](#11---overview)
      - [What is a Serious Game?](#what-is-a-serious-game)
      - [What is Climate Change?](#what-is-climate-change)
      - [What is Carbon Footprint?](#what-is-carbon-footprint)
  - [1.2 - Project Definition](#12---project-definition)
    - [1.2.1 - Purpose](#121---purpose)
    - [1.2.3 - Deliverables](#123---deliverables)
  - [1.3 - Project Organization](#13---project-organization)
    - [1.3.1 - Project Representatives](#131---project-representatives)
    - [1.3.2 - Stakeholders](#132---stakeholders)
    - [1.3.3 - Project Team](#133---project-team)
    - [1.3.4 - Project Reviewers](#134---project-reviewers)
- [2. - Game Overview](#2---game-overview)
  - [2.1 - Game Concept](#21---game-concept)
    - [2.1.1 - Game Genre](#211---game-genre)
      - [2.1.1.1 - Similar Games](#2111---similar-games)
    - [2.1.2 - Game Audience](#212---game-audience)
      - [2.1.2.1 - Rating](#2121---rating)
      - [2.1.2.2 - Audience](#2122---audience)
        - [2.1.2.2.1 - Eco-Minded and Educational](#21221---eco-minded-and-educational)
      - [2.1.2.2.2 - Casual and Strategy Gamers](#21222---casual-and-strategy-gamers)
    - [2.1.3 - Game Setting](#213---game-setting)
    - [2.1.4 - Game Mechanics](#214---game-mechanics)
    - [2.1.5 - Synopsis](#215---synopsis)
    - [2.1.6 - Visual Style](#216---visual-style)
    - [2.1.7 - Game Controls](#217---game-controls)
    - [2.2.1 - Game Goals](#221---game-goals)
    - [2.2.2 - Game Challenges](#222---game-challenges)
  - [2.3 - Game Features](#23---game-features)
    - [2.3.1 - Resource Balancing](#231---resource-balancing)
    - [2.3.2 - Game Dilemmas](#232---game-dilemmas)
    - [2.3.3 - Characters](#233---characters)
    - [2.3.4 - Game Level](#234---game-level)
    - [2.3.5 - Construction Grid](#235---construction-grid)
- [3. - Assets and Resources](#3---assets-and-resources)
  - [3.1 - Game Assets](#31---game-assets)
    - [3.1.1 - Buildings](#311---buildings)
      - [3.1.1.1 - Residential Buildings](#3111---residential-buildings)
      - [3.1.1.2 - Commercial Buildings](#3112---commercial-buildings)
      - [3.1.1.2 - Industrial Buildings](#3112---industrial-buildings)
      - [3.1.1.3 - Public Buildings](#3113---public-buildings)
    - [3.1.2 - Green Spaces and Energy Sources](#312---green-spaces-and-energy-sources)
    - [3.1.3 - Decorative Elements](#313---decorative-elements)
    - [3.1.4 - Ground Textures](#314---ground-textures)
    - [3.1.5 - Vehicles](#315---vehicles)
    - [3.1.6 - Icons](#316---icons)
    - [3.1.7 - Sound Effects](#317---sound-effects)
    - [3.1.8 - Music](#318---music)
    - [3.1.9 - Fonts](#319---fonts)
      - [3.1.9.1 - Main Font](#3191---main-font)
      - [3.1.9.2 - Secondary Font](#3192---secondary-font)
- [4 - Game Mechanics](#4---game-mechanics)
  - [4.1 - Resource Balancing](#41---resource-balancing)
      - [4.1.1 - CO₂ Levels](#411---co-levels)
        - [CO₂ Emission Impact Table:](#co-emission-impact-table)
        - [Actions Impacting CO₂ Levels:](#actions-impacting-co-levels)
      - [4.1.2 - Money](#412---money)
        - [Money Flow:](#money-flow)
      - [4.1.3 - Population](#413---population)
      - [4.1.4 - Happiness](#414---happiness)
        - [Happiness Impact on Population:](#happiness-impact-on-population)
        - [How to Influence Happiness:](#how-to-influence-happiness)
      - [4.1.5 - Game Progression](#415---game-progression)
      - [4.1.6 - Upgrade System](#416---upgrade-system)
        - [Building Upgrade Cost Breakdown (Example: $100,000 Initial Cost):](#building-upgrade-cost-breakdown-example-100000-initial-cost)
    - [4.1.7 Resource Management - Overview Diagram](#417-resource-management---overview-diagram)
    - [4.2 - Map](#42---map)
      - [Navigation:](#navigation)
    - [4.3 - Game Dilemmas](#43---game-dilemmas)
      - [4.3.1 - Renovate vs. Rebuild](#431---renovate-vs-rebuild)
      - [4.3.2 - Public Transport vs. Cars](#432---public-transport-vs-cars)
      - [4.3.3 - Green Energy vs. Fossil Fuels](#433---green-energy-vs-fossil-fuels)
      - [4.3.4 - Recycling vs. Landfill](#434---recycling-vs-landfill)
    - [4.4 - Strategic Decision-Making](#44---strategic-decision-making)
      - [4.4.1 - Short-Term vs. Long-Term](#441---short-term-vs-long-term)
      - [4.4.2 - Financial vs. Environmental](#442---financial-vs-environmental)
      - [4.4.3 - Population Growth vs. Sustainability](#443---population-growth-vs-sustainability)
      - [4.4.4 - Happiness vs. Efficiency](#444---happiness-vs-efficiency)
- [5 - Game Interface](#5---game-interface)
  - [5.1 - Main Menu](#51---main-menu)
  - [5.2 - Game Screen](#52---game-screen)
  - [5.3 - Construction Menu](#53---construction-menu)
  - [5.4 - Resource Indicators](#54---resource-indicators)
  - [5.6 - Settings](#56---settings)
- [6 - End Matter](#6---end-matter)
  - [6.1 - Contributors](#61---contributors)
  - [6.2 - License](#62---license)
  - [6.3 - Glossary](#63---glossary)

</details>

# 1. - Introduction

## 1.1 - Overview

The aim of this project is to create a **Serious Game** about **Climate Change**, more focused on **Carbon Footprint**. The game will be designed to raise awareness about climate change and its consequences. 

#### What is a Serious Game?
A **Serious Game** is a game designed for a primary purpose other than pure entertainment. The "serious" adjective is generally prepended to refer to video games used by industries like defense, education, scientific exploration, health care, emergency management, city planning, engineering, religion, and politics.

#### What is Climate Change?
**Climate Change** is a long-term change in the average weather patterns that have come to define Earth's local, regional, and global climates. It is caused by the increase of greenhouse gases in the atmosphere, which trap heat. This leads to a rise in the Earth's temperature, which causes the melting of ice caps, the rise of sea levels, and the increase of extreme weather events.

#### What is Carbon Footprint?
A **Carbon Footprint** is the total amount of greenhouse gases (including carbon dioxide and methane) that are generated by our actions. It is usually expressed in equivalent tons of carbon dioxide (CO₂). The carbon footprint is a measure of the impact human activities have on the environment in terms of the amount of greenhouse gases produced.

## 1.2 - Project Definition

### 1.2.1 - Purpose

[_(Back to top)_](#toc)

Our game combines city management mechanics with an educational focus on environmental issues. The player must make decisions to lower their city's carbon footprint while maintaining a balance of four critical resources:

1. CO₂ Levels – The environmental impact of the city.
2. Money – The city’s financial resources.
3. Population – The number of citizens in the city.
4. Happiness – The overall satisfaction of the population.

If the CO₂ levels rise too high or the population becomes too unhappy and leaves the city, the player loses the game when there are no more citizens left in the city.

[_(Back to top)_](#toc)

Below is a MoSCoW table that lists the features that are in scope and out of scope for this project.

| Feature                    | Description                                                                     | Must Have | Should Have | Could Have | Won't Have |
| -------------------------- | ------------------------------------------------------------------------------- | --------- | ----------- | ---------- | ---------- |
| City Management            | The player will manage a city and its resources.                                | 🟢         |             |            |            |
| Decision-Making System     | The player will make impactful decisions with long-term consequences.           | 🟢         |             |            |            |
| Resource Balancing         | The player must balance CO₂, money, population, and happiness.                  | 🟢         |             |            |            |
| Dilemmas with Explanations | The game will present educational dilemmas related to environmental challenges. | 🟢         |             |            |            |
| 2D Isometric View          | The game will feature a 2D isometric visual style.                              | 🟢         |             |            |            |
| Tutorial                   | The player will have a tutorial explaining the mechanics.                       |           | 🟡           |            |            |
| Save Game                  | The player can save their progress.                                             |           | 🟡           |            |            |
| Music                      | The game will include background music.                                         |           | 🟡           |            |            |
| Sound Effects              | The game will include sound effects for feedback.                               |           | 🟡           |            |            |
| Multiplayer                | The player can play with others.                                                |           |             |            | 🔴          |


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

| Stakeholder             | Description                                     |
| ----------------------- | ----------------------------------------------- |
| ALGOSUP                 | They are the owners of the project.             |
| Konstantinos D.         | He is the consultant for the game design.       |
| Team 5                  | They are the developers of the project.         |
| 3D Molier International | Partners for 3D models                          |
| End-Users               | They are the players of the game.               |
| Reviewers               | They are the external reviewers of the project. |

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

**Carbon Control** is played on 10 years of in-game time, 1 day in-game is equivalent to 12 seconds in real life. The game can be finished before the 10 years if the player loses the game. The player can pause the game at any time.
The game is aimed to long at least 12 hour to finish the game. When the player finishes, he got some statistics about his game and can restart the game.

### 2.1.1 - Game Genre

The game will be a **Serious Game** with elements of **Strategy** and **City Management**. The focus is on resource balancing and decision-making to raise awareness about environmental issues. Players will encounter ecological dilemmas, requiring strategic thinking and moral consideration.

#### 2.1.1.1 - Similar Games

- **SimCity**: A city-building simulation game that allows players to construct and manage a city. [🔗](https://www.ea.com/games/simcity)
- **Cities: Skylines**: A city-building game that emphasizes urban planning and infrastructure management. [🔗](https://www.citiesskylines.com/)
- **Plan it Green**: An eco-friendly city-building game developed by National Geographic in 2013. [🔗](https://archive.org/details/plan-it-green/Cover.jpg)

### 2.1.2 - Game Audience

#### 2.1.2.1 - Rating

**Carbon Control** will carry a **T (Teen 13+) rating** in the United States and a **PEGI 12 rating** in Europe.

<img src="img/icons/rating/rated-t.png" style="height:18px;"/> A **T (Teen 13+) rating** allows content suitable for players aged 13 and up, which may include violence, suggestive themes, crude humor, minimal blood, simulated gambling, and occasional strong language.

<img src="img/icons/rating/pegi-12.png" style="height:18px;"/> A **PEGI 12 rating** permits fantasy violence, non-realistic violence toward human-like characters, and mild nudity with some graphic detail.


In our case, the game will be mild, containing no violence or nudity. We chose this rating to allow for occasional strong language to enhance character expression and realism, while still remaining accessible to a younger audience.

#### 2.1.2.2 - Audience

The primary audience includes teenagers and young adults interested in environmental topics and strategy games. The game's mechanics and dilemmas are designed to appeal to players seeking a mix of learning and strategic challenges.

##### 2.1.2.2.1 - Eco-Minded and Educational 

| The Ecological Activist                                                                                                                                                                                                                                                                                                                               | The Concerned Parent                                                                                                                                                                                                                                                                                |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <img src="img/personas/eco-activist.png" style="height:250px;"/>                                                                                                                                                                                                                                                                                      | <img src="img/personas/concerned-parent.png" style="height:250px;"/>                                                                                                                                                                                                                                |
| **Name:** Emma Green                                                                                                                                                                                                                                                                                                                                  | **Name:** Sarah Robinson                                                                                                                                                                                                                                                                            |
| **Age:** 29                                                                                                                                                                                                                                                                                                                                           | **Age:** 42                                                                                                                                                                                                                                                                                         |
| **Occupation:** Environmental Consultant                                                                                                                                                                                                                                                                                                              | **Occupation:** High School Science Teacher                                                                                                                                                                                                                                                         |
| **Location:** San Francisco, CA, USA                                                                                                                                                                                                                                                                                                                  | **Location:** Dublin, Ireland                                                                                                                                                                                                                                                                       |
| **Tech Savviness:** ⭐️⭐️⭐️                                                                                                                                                                                                                                                                                                                               | **Tech Savviness:** ⭐️⭐️                                                                                                                                                                                                                                                                              |
| **Ecological Awareness:** ⭐️⭐️⭐️⭐️⭐️                                                                                                                                                                                                                                                                                                                       | **Ecological Awareness:** ⭐️⭐️⭐️⭐️                                                                                                                                                                                                                                                                      |
| **Bio:** Emma is passionate about sustainability and spends her free time advocating for environmental causes. She enjoys games that align with her values, especially those that provide educational insights into real-world issues. For Emma, **Carbon Control** offers a way to unwind while gaining new ideas for her work and inspiring change. | **Bio:** Sarah is dedicated to teaching her children and students about sustainability. She sees **Carbon Control** as both a fun and educational tool for sparking discussions about environmental challenges. It allows her to combine quality time with her family and her passion for teaching. |


#### 2.1.2.2.2 - Casual and Strategy Gamers

| The Strategy Enthusiast                                                                                                                                                                                                                                                                                                                                | The Casual Gamer                                                                                                                                                                                                                                                                                                                 |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <img src="img/personas/strategy-enthusiast.png" style="height:250px;"/>                                                                                                                                                                                                                                                                                | <img src="img/personas/casual-gamer.png" style="height:250px;"/>                                                                                                                                                                                                                                                                 |
| **Name:** James Mitchell                                                                                                                                                                                                                                                                                                                               | **Name:** Lucas Dupont                                                                                                                                                                                                                                                                                                           |
| **Age:** 35                                                                                                                                                                                                                                                                                                                                            | **Age:** 19                                                                                                                                                                                                                                                                                                                      |
| **Occupation:** Software Engineer                                                                                                                                                                                                                                                                                                                      | **Occupation:** University Student (Economics)                                                                                                                                                                                                                                                                                   |
| **Location:** Seattle, WA, USA                                                                                                                                                                                                                                                                                                                         | **Location:** Paris, France                                                                                                                                                                                                                                                                                                      |
| **Tech Savviness:** ⭐️⭐️⭐️⭐️⭐️                                                                                                                                                                                                                                                                                                                              | **Tech Savviness:** ⭐️⭐️⭐️                                                                                                                                                                                                                                                                                                          |
| **Ecological Awareness:** ⭐️⭐️⭐️                                                                                                                                                                                                                                                                                                                          | **Ecological Awareness:** ⭐️⭐️                                                                                                                                                                                                                                                                                                     |
| **Bio:** James loves mastering complex systems and enjoys strategy games like Cities: Skylines and Civilization. While climate change isn’t his main focus, the resource management and decision-making mechanics of **Carbon Control** appeal to his strategic mind. For James, the game offers a relaxing yet intellectually stimulating experience. | **Bio:** Lucas enjoys light, engaging games that blend entertainment with learning. With interests in urban planning and economics, **Carbon Control** appeals to his curiosity about managing resources and solving environmental problems. Lucas plays games to unwind and expand his knowledge in a low-pressure environment. |

### 2.1.3 - Game Setting

**Carbon Control** will be available on computers, the supported operating systems will be Windows <img src="img/icons/os/windows.png" style="height:18px;"/> and MacOS <img src="img/icons/os/macos.png" style="height:18px;"/>. 
The player will be able to set the language of the game in the settings, the game will be available in American English <img src="img/icons/flags/usa.png" style="width:18px;"/> and French <img src="img/icons/flags/france.png" style="width:18px;"/>.

### 2.1.4 - Game Mechanics  

1. **Resource Management**: Players must manage key resources (CO₂, money, population, and happiness) to maintain balance in the city.
2. **Dilemmas**: Players face ecological dilemmas (e.g., renovate vs. demolish and rebuild) with simplified, educational explanations.
3. **Strategic Decision-Making**: The choices players make will directly affect resources and overall outcomes.
4. **Game Over Condition**: If CO₂ levels rise too high or the population is insufficiently happy, the player loses the game.

### 2.1.5 - Synopsis

Players step into the shoes of a city mayor tasked with reducing their city’s carbon footprint while balancing financial resources, population growth, and citizen happiness. Through strategic decisions and engaging dilemmas, players learn about the impact of urban planning and resource management on the environment.

### 2.1.6 - Visual Style

**Carbon Control** will feature a **3D isometric visual style** with **low-poly assets**. All the assets are open-source and available on the internet. 

### 2.1.7 - Game Controls

The Player will be able to control the game using the keyboard (WASD keys) and the mouse. The player will be able to zoom in and out using the mouse wheel. The player will be able to access the game menu by pressing the `ESC` key.

- W - Move Camera Up
- A - Move Camera Left
- S - Move Camera Down
- D - Move Camera Right
- Mouse Wheel - Zoom In/Out
- Mouse Click - Select/Interact with Buildings
- ESC - Open Game Menu

### 2.2.1 - Game Goals

1. **Raise Awareness**: Teach players about the importance of sustainable practices through gameplay.
2. **Encourage Reflection**: Highlight the environmental consequences of urban decisions.
3. **Empower Decisions**: Show how thoughtful choices can lead to positive environmental outcomes.


### 2.2.2 - Game Challenges

1. **Resource Management**: Players must manage CO₂ emissions, financial budgets, population needs, and happiness levels effectively.
2. **Ecological Dilemmas**: Players face moral and strategic decisions, each with pros and cons.
3. **Difficulty Scaling**: The game becomes progressively more complex as players advance.


## 2.3 - Game Features

### 2.3.1 - Resource Balancing

The game will track four core resources:
- **CO₂ Levels**: Represents environmental impact.
- **Money**: Tracks city finances.
- **Population**: Indicates city growth.
- **Happiness**: Reflects citizen satisfaction and serves as a failure condition.

### 2.3.2 - Game Dilemmas

Each in-game decision presents a dilemma with educational context, such as:  
- **Renovate vs. Rebuild**: Renovating a building saves resources but may not be as efficient. Rebuilding costs more but could have a lower long-term carbon footprint.


### 2.3.3 - Characters

| Name             | Description                                            | Role                 | Image                                                                         |
| ---------------- | ------------------------------------------------------ | -------------------- | ----------------------------------------------------------------------------- |
| Mayor            | The player character, acting as the mayor of the city. | Protagonist          | <img src="img/assets/characters/mayor.png" style="height:100px;"/>            |
| Citizen          | Represents the city's population and happiness.        | Supporting Character | <img src="img/assets/characters/citizen.png" style="height:100px;"/>          |
| Environmentalist | Provides advice and context on ecological dilemmas.    | Supporting Character | <img src="img/assets/characters/environmentalist.png" style="height:100px;"/> |
| Worker           | Represents the city's labor force.                     | Supporting Character | <img src="img/assets/characters/worker.png" style="height:100px;"/>           |

### 2.3.4 - Game Level

The game will feature a single-player gameplay in a sandbox mode. Players can manage their city at their own pace, with no time constraints. **Carbon Control** end at the day 3652, except if there are no more citizens in the city.

### 2.3.5 - Construction Grid

The game will feature a grid-based construction system, allowing players to place buildings and structures on a city map. The grid system ensures that buildings are placed in an orderly fashion and align with the city's infrastructure.

# 3. - Assets and Resources

## 3.1 - Game Assets

The game will feature the following assets:
- **Buildings**: Residential, commercial, industrial, and public buildings.
- **Green Spaces and Energy Sources**: Parks, solar panels, wind turbines.
- **Decorative Elements**: Trees, benches, streetlights, and signs.
- **Ground Textures**: Roads, grass, water, and concrete.
- **Vehicles**: Cars, buses, bicycles, and trucks.
- **Characters**: Mayor, citizens, environmentalists, and workers.
- **Icons**: Resource indicators and game controls.
- **UI Elements**: Menus, buttons, and overlays.
- **Sound Effects**: Clicks, notifications, and environmental sounds.
- **Music**: Background tracks and ambient sounds.  
- **Fonts**: UI text fonts and styles.

The assets will be sourced from open-source libraries and created by the development team. All assets will be optimized for performance and visual consistency.

### 3.1.1 - Buildings

The game will feature the following building types:

1. **Residential Buildings**: Houses and apartments for citizens.
2. **Commercial Buildings**: Shops, restaurants, and businesses.
3. **Industrial Buildings**: Factories and warehouses.
4. **Public Buildings**: Schools, hospitals, and government offices.

#### 3.1.1.1 - Residential Buildings

The residential buildings are used to house the city's population. They come in various sizes and capacities, each **affecting the city's population levels.**

| Name         | Description                                                           | Price to build | Number of Citizen | Price per Citizen | Slot Needed to Built | Image                                                                                |
| ------------ | --------------------------------------------------------------------- | -------------- | ----------------- | ----------------- | -------------------- | ------------------------------------------------------------------------------------ |
| Small House  | A small, single-family home for 2 citizens.                           | $28,000         | 2                 | 14,000$            | 1 (1x1)              | <img src="img/assets/buildings/residential/small-house.png" style="height:100px;"/>  |
| Medium House | A medium-sized home for 4 citizens.                                   | $60,000         | 4                 | 15,000$            | 4 (2x2)              | <img src="img/assets/buildings/residential/medium-house.png" style="height:100px;"/> |
| Large House  | A large, multi-story home for 6 citizens.                             | $84,000         | 6                 | 14,000$            | 9 (3x3)              | <img src="img/assets/buildings/residential/large-house.png" style="height:100px;"/>  |
| Apartment    | A multi-unit building with 6 apartments. Each unit houses 4 citizens. | $1,320,000      | 24                | 55,000$            | 25 (5x5)             | <img src="img/assets/buildings/residential/apartment.png" style="height:100px;"/>    |
| Skyscraper   | A high-rise building with 32 units. Each unit houses 4 citizens.      | $7,040,000      | 128               | 55,000$            | 81 (9x9)             | <img src="img/assets/buildings/residential/skyscraper.png" style="height:100px;"/>   |

#### 3.1.1.2 - Commercial Buildings

The commercial buildings are used to provide goods and services to the city's population. **They generate income for the city.**

| Name          | Description                                          | Price to build | Earning by Day | Day to Earn Back | Slot Needed to Built | Image                                                                             |
| ------------- | ---------------------------------------------------- | -------------- | -------------- | ---------------- | -------------------- | --------------------------------------------------------------------------------- |
| Bookshop      | A small shop selling books and magazines.            | $40,000        | $800           | 50               | 9 (3x3)              | <img src="img/assets/buildings/commercial/bookshop.png" style="height:100px;"/>   |
| Barber Shop    | A barbershop offering haircuts and shaves.           | $60,000        | $1,200         | 50               | 4 (2x2)              | <img src="img/assets/buildings/commercial/barbershop.png" style="height:100px;"/> |
| Bakery        | A bakery selling bread, pastries, and cakes.         | $80,000        | $1,400         | 57               | 4 (2x2)              | <img src="img/assets/buildings/commercial/bakery.png" style="height:100px;"/>     |
| Pharmacy      | A pharmacy selling medicine and health products.     | $120,000       | $2,000         | 60               | 9 (3x3)              | <img src="img/assets/buildings/commercial/pharmacy.png" style="height:100px;"/>   |
| Hardware Store | A hardware store selling tools and supplies.         | $200,000       | $3,000         | 67               | 16 (4x4)              | <img src="img/assets/buildings/commercial/hardware.png" style="height:100px;"/>   |
| Farm          | A farm producing fresh fruits and vegetables.        | $1,200,000     | $12,000        | 100              | 30 (6x5)          | <img src="img/assets/buildings/commercial/farm.png" style="height:100px;"/>       |
| Casino        | A casino offering games of chance and entertainment. | $3,000,000     | $30,000        | 100              | 27 (9x3)             | <img src="img/assets/buildings/commercial/casino.png" style="height:100px;"/>     |

#### 3.1.1.2 - Industrial Buildings

The industrial buildings are used to produce goods and materials for the city. **They generate CO₂ emissions or reduce the CO₂ emissions.**

| Name        | Description                              | Price to build | Earning by Day | Day to Earn Back | CO2 by Day | Slot Needed to Built | Image                                                                              |
| ----------- | ---------------------------------------- | -------------- | -------------- | ---------------- | ------------------- | -------------------- | ---------------------------------------------------------------------------------- |
| Factory     | A factory producing goods and materials. | $400,000       | $8,000         | 50               | 12 000             | 48 (8x6)             | <img src="img/assets/buildings/industrial/factory.png" style="height:100px;"/>     |
| Recycling Center | A recycling center processing waste.    | $1,200,000     | $15,000        | 80               | -8 000              | 30 (6x5)             | No Image Available                                                                 |
| Power Plant | A power plant generating electricity.    | $3,000,000     | $35,000        | 86               | 20 000             | 25 (5x5)             | <img src="img/assets/buildings/industrial/power-plant.png" style="height:100px;"/> |
| Oil Refinery | An oil refinery producing fuel.          | $7,000,000     | $65,000        | 108              | 50 000             | 36 (6x6)             | No Image Available                                                                 |


#### 3.1.1.3 - Public Buildings

The public buildings are used to provide services and amenities to the city's population. **They increase citizen happiness.**

| Name      | Description                               | Price to build | Earning by Day | Day to Earn Back | Happinness | Slot Needed to Built | Image                                                                        |
| --------- | ----------------------------------------- | -------------- | -------------- | ---------------- | --------- | -------------------- | ---------------------------------------------------------------------------- |
| City Hall | The city's administrative center.         | $0             | $500             | 0                | 100      | 6 (3x2)              | <img src="img/assets/buildings/public/city-hall.png" style="height:100px;"/> |
| School    | A school providing education to children. | $200,000       | $1,000         | 200              | 400      | 9 (3x3)              | <img src="img/assets/buildings/public/school.png" style="height:100px;"/>    |
| Hospital  | A hospital providing medical care.        | $400,000       | $2,000         | 200              | 600      | 9 (3x3)              | <img src="img/assets/buildings/public/hospital.png" style="height:100px;"/>  |
| Museum    | A museum showcasing art and history.      | $800,000       | $4,000         | 200              | 1 200    | 32 (8x4)             | <img src="img/assets/buildings/public/museum.png" style="height:100px;"/>    |

### 3.1.2 - Green Spaces and Energy Sources

The Green Spaces and Energy Sources are used to reduce CO₂ emissions and increase citizen happiness. **They provide environmental benefits, financial income and increase citizen satisfaction.**

The game will feature the following green spaces and energy sources:

1. **Parks**: Increase happiness and reduce CO₂ emissions.
2. **Lakes**: Increase happiness and reduce CO₂ emissions.
3. **Wind Turbines**: Generate income and reduce CO₂ emissions.
4. **Solar Panels**: Generate income and reduce CO₂ emissions.

| Name         | Description                                 | Price to build | Earning by Day | Day to Earn Back | CO2 Non-Produced by Day | Happiness | Slot Needed to Built | Image                                                                                 |
| ------------ | ------------------------------------------- | -------------- | -------------- | ---------------- | ----------------------- | --------- | -------------------- | ------------------------------------------------------------------------------------- |
| Park         | A public park with green spaces and trees.  | $40,000        | $100           | 400              | 600                    | 300      | 4 (2x2)              | No Image Available                                                                    |
| Lake         | A natural lake providing water and scenery. | $80,000        | $200           | 400              | 800                    | 400      | 9 (3x3)              | <img src="img/assets/buildings/green-spaces/lake.png" style="height:100px;"/>         |
| Wind Turbine | Wind turbines generating electricity.       | $360,000       | $2,000         | 180              | 2 500                  | 0         | 12 (4x3)             | <img src="img/assets/buildings/green-spaces/wind-turbine.png" style="height:100px;"/> |
| Solar Panel  | Solar panels generating electricity.        | $600,000       | $4,000         | 150              | 4 000                  | 0         | 16 (4x4)             | <img src="img/assets/buildings/green-spaces/solar-panel.png" style="height:100px;"/>  |

### 3.1.3 - Decorative Elements

The decorative elements are used to enhance the city's aesthetics and increase citizen happiness. **They provide environmental benefits and increase citizen satisfaction.**

The game will feature the following decorative elements:

| Name        | Description                            | Price to build | Earning by Day | Day to Earn Back | CO2 Non-Produced by Day | Happiness | Slot Needed to Built | Image                                                                    |
| ----------- | -------------------------------------- | -------------- | -------------- | ---------------- | ----------------------- | --------- | -------------------- | ------------------------------------------------------------------------ |
| Trees       | A spot of several trees.               | $1,000         | $0              | Never            | 50                     | 10       | 1 (1x1)              | <img src="img/assets/decorative/trees.png" style="height:100px;"/>       |
| Bench       | A bench for citizens to sit and relax. | $1,000         | $0              | Never            | 0                       | 20       | 1 (1x1)              | <img src="img/assets/decorative/bench.png" style="height:100px;"/>       |
| Streetlight | A streetlight to illuminate the city.  | $1,000         | $0              | Never            | 0                       | 10       | 1 (1x1)              | <img src="img/assets/decorative/streetlight.png" style="height:100px;"/> |

### 3.1.4 - Ground Textures

Following are the ground textures that will be used in the game:

| Name     | Description                           | Image                                                               |
| -------- | ------------------------------------- | ------------------------------------------------------------------- |
| Road     | A paved road for vehicles.            | <img src="img/assets/textures/road.png" style="height:100px;"/>     |
| Grass    | A grassy area for parks and lawns.    | <img src="img/assets/textures/grass.png" style="height:100px;"/>    |
| Water    | A water texture for lakes and rivers. | <img src="img/assets/textures/water.png" style="height:100px;"/>    |
| Concrete | A concrete texture for buildings.     | <img src="img/assets/textures/concrete.png" style="height:100px;"/> |

### 3.1.5 - Vehicles

The game will feature the following vehicles:

| Name          | Description                           | Image                                                                    |
| ------------- | ------------------------------------- | ------------------------------------------------------------------------ |
| Car           | A car for citizens to travel.         | <img src="img/assets/vehicles/car.png" style="height:100px;"/>           |
| Bicycle       | A bicycle for citizens to ride.       | <img src="img/assets/vehicles/bicycle.png" style="height:100px;"/>       |
| Police        | A police car for law enforcement.     | <img src="img/assets/vehicles/police.png" style="height:100px;"/>        |
| Ambulance     | An ambulance for medical emergencies. | <img src="img/assets/vehicles/ambulance.png" style="height:100px;"/>     |
| Firetruck     | A fire truck for firefighting.        | <img src="img/assets/vehicles/firetruck.png" style="height:100px;"/>     |
| Garbage truck | A garbage truck for waste collection. | <img src="img/assets/vehicles/garbage-truck.png" style="height:100px;"/> |

### 3.1.6 - Icons

Icons are used to represent resources, controls, and information in **Carbon Control**. The game will feature the following icons:

| Name       | Description                              | Image                                                                |
| ---------- | ---------------------------------------- | -------------------------------------------------------------------- |
| CO2        | Icon representing CO2 emissions.         | <img src="img/icons/resources/co2.png" style="height:50px;"/>        |
| Money      | Icon representing financial resources.   | <img src="img/icons/resources/money.png" style="height:50px;"/>      |
| Population | Icon representing the city's population. | <img src="img/icons/resources/population.png" style="height:50px;"/> |
| Happiness  | Icon representing citizen satisfaction.  | <img src="img/icons/resources/happiness.png" style="height:50px;"/>  |
| Clock      | Icon representing the time.              | <img src="img/icons/resources/clock.png" style="height:50px;"/>      |

### 3.1.7 - Sound Effects

The list of the sound effect is not defined at the moment, All the sound effects will be downloaded from the [Universal-Soundbank](https://www.universal-soundbank.com/).

### 3.1.8 - Music

Background music is used to set the tone and atmosphere of **Carbon Control**. The game will feature 1 background track that will loop during gameplay.
The track is not copyrighted, you can find it here: [🔗 Background Music](https://youtu.be/tsoRvdnl1fk?si=l55ZUXQx6pxbNFJU)

### 3.1.9 - Fonts

Fonts are used to display text and information. The game will feature a main font for the headings and a secondary font for the body text.

#### 3.1.9.1 - Main Font

The main font used is **Parkinsans**. It is a clean, modern font that is easy to read and suitable for UI elements and text.

<img src="img/assets/fonts/parkinsans.png" style="height:100px;"/>

🔗 The font can be downloaded [here](https://fonts.google.com/specimen/Parkinsans)

#### 3.1.9.2 - Secondary Font

The secondary font used is **Roboto**. It is a versatile, easy-to-read font that is suitable for body text and subtitles.

<img src="img/assets/fonts/roboto.png" style="height:100px;"/>

🔗 The font can be downloaded [here](https://fonts.google.com/specimen/Roboto)

# 4 - Game Mechanics

## 4.1 - Resource Balancing

#### 4.1.1 - CO₂ Levels

CO₂ levels indicate the environmental impact of the city. Players aim to keep CO₂ levels low while balancing economic growth and sustainability.

##### CO₂ Emission Impact Table:

| CO₂ Level            | Impact on Happiness                  |
| --------------------- | ------------------------------------ |
| **Low (0%-30%)**      | Happiness increases by **5% daily** |
| **Medium Low (31%-50%)** | No impact on happiness              |
| **Medium High (51%-70%)** | Happiness decreases by **5% daily** |
| **High (71%-100%)**   | Happiness decreases by **10% daily** |

##### Actions Impacting CO₂ Levels:

| **Decrease CO₂ Levels**                            | **Increase CO₂ Levels**                            |
| -------------------------------------------------- | ------------------------------------------------- |
| Building green spaces and renewable energy sources | Constructing industrial buildings                  |
| Upgrading industrial buildings to reduce emissions | Relying on fossil fuels for energy production      |
| Implementing eco-friendly policies                 | Allowing traffic congestion                        |
| Encouraging public transport use                   | Ignoring environmental issues                     |

#### 4.1.2 - Money
Money represents financial resources. Players must balance earning and spending to grow the city sustainably.

##### Money Flow:

| **Earn Money**                                   | **Spend Money**                              |
| ----------------------------------------------- | ------------------------------------------- |
| Collect taxes from citizens and businesses      | Build infrastructure and new buildings       |
| Generate income from commercial/industrial zones| Upgrade buildings                            |
| Complete missions and challenges                | Fund green initiatives and policies          |

#### 4.1.3 - Population
Population reflects the city's growth and prosperity.

| **Increase Population**          | **Decrease Population**                     |
| -------------------------------- | ------------------------------------------ |
| Build residential buildings       | Allow happiness to drop too low            |

#### 4.1.4 - Happiness
Happiness represents citizen satisfaction and well-being. Maintaining a high happiness level leads to population growth, while low happiness causes population decline.

##### Happiness Impact on Population:

| Happiness Level (%) | Population Impact                        |
|----------------------|------------------------------------------|
| **0%-15%**           | 3 citizens leave each day               |
| **16%-30%**          | 2 citizens leave each day               |
| **31%-45%**          | 1 citizen leaves each day               |
| **46%-60%**          | No change                               |
| **61%-70%**          | 1 citizen arrives each day              |
| **71%-90%**          | 2 citizens arrive each day              |
| **91%-100%**         | 3 citizens arrive each day              |

##### How to Influence Happiness:

| **Increase Happiness**                          | **Decrease Happiness**                       |
| ---------------------------------------------- | ------------------------------------------- |
| Build green spaces and public amenities        | Neglect citizen needs                       |
| Provide services like schools and hospitals    | Allow CO₂ levels to rise excessively        |  

#### 4.1.5 - Game Progression
The game advances over time:

- **In-Game Day:** 12 seconds in real-time.
- **Events:** Trigger every 6 in-game months, offering new buildings, policies, technologies, or dilemmas with resource impacts.  
- **Game End:** After 10 in-game years or if CO₂ levels reach critical levels.

```mermaid
graph TD
    A[Game Start] --> B[In-Game Day]
    B -->|12 seconds in real-time| C[Time Advances]
    C --> D[Events Trigger]
    D -->|Every 6 in-game months| E[New Buildings]
    D -->|Every 6 in-game months| F[New Policies]
    D -->|Every 6 in-game months| G[New Technologies]
    D -->|Every 6 in-game months| H[New Dilemmas]
    C --> I[Game End Conditions]
    I -->|After 10 in-game years| J[Game Ends]
    I -->|Critical CO₂ Levels Reached| J[Game Ends]
```

#### 4.1.6 - Upgrade System
Buildings can be upgraded to improve efficiency and reduce environmental impact. 

##### Building Upgrade Cost Breakdown (Example: $100,000 Initial Cost):

| Level          | Upgrade Cost | % of Initial Cost | Total Value After Upgrade |
| -------------- | ------------ | ----------------- | ------------------------- |
| **1 (purchase)** | $100,000     | 0%                | $100,000                  |
| **2**          | $20,000      | 20%               | $120,000                  |
| **3**          | $24,000      | 20%               | $144,000                  |
| **4**          | $28,800      | 20%               | $172,800                  |
| **5**          | $51,840      | 30%               | $224,640                  |
| **6**          | $67,392      | 30%               | $292,032                  |
| **7**          | $87,610      | 30%               | $379,642                  |
| **8**          | $151,857     | 40%               | $531,499                  |
| **9**          | $212,600     | 40%               | $744,099                  |
| **10 (max)**    | $372,050     | 50%               | $1,116,149                |

### 4.1.7 Resource Management - Overview Diagram

```mermaid
graph TD
    A[City Resources] -->|Environmental Impact| B[CO₂ Levels]
    A -->|Financial Stability| C[Money]
    A -->|Population Growth| D[Population]
    A -->|Citizen Well-being| E[Happiness]
    A -->|Upgrades and Policies| F[Game Progression]
    
    B -->|High CO₂| G[Negative Happiness Impact]
    B -->|Low CO₂| H[Positive Happiness Impact]
    B -->|Actions| I{Modify CO₂}
    I --> J[Build Green Spaces]
    I --> K[Upgrade Buildings]
    I --> L[Use Fossil Fuels]
    I --> M[Increase Traffic]

    C -->|Income| N{Money Sources}
    C -->|Expenditure| O{Money Uses}
    N --> P[Taxes]
    N --> Q[Commercial/Industrial Revenue]
    O --> R[Building Construction]
    O --> S[Policy Investments]

    D -->|Happiness Impact| T{Happiness Levels}
    T -->|0%-15%| U[3 citizens leave daily]
    T -->|16%-30%| V[2 citizens leave daily]
    T -->|31%-45%| W[1 citizen leaves daily]
    T -->|46%-60%| X[No change]
    T -->|61%-70%| Y[1 citizen arrives daily]
    T -->|71%-90%| Z[2 citizens arrive daily]
    T -->|91%-100%| AA[3 citizens arrive daily]
    
    E -->|Positive Actions| AB[Green Spaces, Services]
    E -->|Negative Actions| AC[High CO₂, Neglect]
```

### 4.2 - Map

The game world is represented as a **grid-based map** of **255x255 tiles**. Players construct, manage, and optimize their city within this grid to achieve a balance between environmental sustainability and urban development.

#### Navigation:
- Players can zoom in and out to get a detailed or overall view of their city.
- The grid facilitates precise planning and allocation of resources.

### 4.3 - Game Dilemmas

#### 4.3.1 - Renovate vs. Rebuild

Every building has a lifespan of **1,000 in-game days**, after which players must choose to **renovate** or **rebuild**. The game incentivizes **renovation** as the more eco-friendly option.

| **Option**     | **Details**                                                                                             | **Cost**                   | **Impact**                                                                                              |
|-----------------|-------------------------------------------------------------------------------------------------------|----------------------------|--------------------------------------------------------------------------------------------------------|
| **Renovate**    | Increases the building's efficiency and reduces its environmental impact.                              | 40% of the building's cost | Extends lifespan by 500 days, moderately decreases CO₂ emissions.                                      |
| **Rebuild**     | Constructs a new building, upgrading to a better version.                                              | 100% of the building's cost| Resets lifespan to 1,000 days but generates more CO₂ emissions during the rebuilding process.           |

#### 4.3.2 - Public Transport vs. Cars

Players must balance the city's transport needs by choosing between **public transport systems** or a car-centric approach. 

| **Option**         | **Details**                                                                                             | **Cost**                              | **Impact**                                                                                              |
|---------------------|-------------------------------------------------------------------------------------------------------|---------------------------------------|--------------------------------------------------------------------------------------------------------|
| **Public Transport**| Build infrastructure like buses and trams for efficient transportation.                                | $300 for every 15 citizens            | Decreases CO₂ emissions and improves citizen happiness.                                                |
| **Cars**            | Expand roads and highways to support car usage.                                                       | $10 per car for every 2 citizens      | Increases CO₂ emissions but boosts economic activity through logistics.                                |

#### 4.3.3 - Green Energy vs. Fossil Fuels

The choice between **green energy** and **fossil fuels** depends on the infrastructure built in the city.  

| **Option**         | **Details**                                                                                             | **Cost**                              | **Impact**                                                                                              |
|---------------------|-------------------------------------------------------------------------------------------------------|---------------------------------------|--------------------------------------------------------------------------------------------------------|
| **Green Energy**    | Requires constructing **Wind Turbines** and **Solar Panels** to generate clean energy.                 | High initial setup cost, low upkeep   | Decreases CO₂ emissions and improves happiness.                                                        |
| **Fossil Fuels**    | Relies on building **Oil Refineries** for energy production.                                           | Moderate initial setup cost, high upkeep| Increases CO₂ emissions and lowers citizen satisfaction.                                               |

#### 4.3.4 - Recycling vs. Landfill

Players must decide how to manage waste to minimize its environmental and social impacts.

| **Option**         | **Details**                                                                                             | **Cost**                              | **Impact**                                                                                              |
|---------------------|-------------------------------------------------------------------------------------------------------|---------------------------------------|--------------------------------------------------------------------------------------------------------|
| **Recycling**       | Build recycling centers to process waste into reusable materials.                                      | Moderate setup cost, low upkeep       | Significantly decreases CO₂ emissions and improves happiness.                                          |
| **Landfill**        | Allocate space for landfills to manage waste without processing.                                       | Low setup cost, high upkeep           | Significantly increases CO₂ emissions and reduces happiness.                                           |

### 4.4 - Strategic Decision-Making

Players must make pivotal choices to balance conflicting priorities, shaping their city's trajectory.

#### 4.4.1 - Short-Term vs. Long-Term

| **Option**            | **Details**                                                                                  | **Cost**                                   | **Impact**                                                                                      |
|------------------------|----------------------------------------------------------------------------------------------|--------------------------------------------|--------------------------------------------------------------------------------------------------|
| **Short-Term Gains**   | Focus on quick fixes or temporary solutions for immediate benefits.                         | Low upfront cost                           | Boosts immediate happiness and revenue but risks higher CO₂ levels or future financial strain. |
| **Long-Term Planning** | Invest in sustainable development, infrastructure, and policies for gradual improvement.    | High upfront cost                          | Leads to reduced CO₂ levels and sustained happiness and growth over time.                      |

#### 4.4.2 - Financial vs. Environmental

| **Option**            | **Details**                                                                                  | **Cost**                                   | **Impact**                                                                                      |
|------------------------|----------------------------------------------------------------------------------------------|--------------------------------------------|--------------------------------------------------------------------------------------------------|
| **Financial Focus**    | Prioritize industrial growth, tax revenue, and economic expansion.                          | High CO₂ impact                            | Generates significant money but reduces citizen happiness and environmental quality.            |
| **Environmental Focus**| Allocate resources toward green initiatives and eco-friendly policies.                      | High initial investment                    | Decreases CO₂ emissions and improves happiness but slows financial growth.                     |

#### 4.4.3 - Population Growth vs. Sustainability

| **Option**              | **Details**                                                                                | **Cost**                                   | **Impact**                                                                                      |
|--------------------------|--------------------------------------------------------------------------------------------|--------------------------------------------|--------------------------------------------------------------------------------------------------|
| **Population Growth**    | Encourage rapid city expansion by building residential areas and infrastructure.          | High resource and energy usage             | Attracts more citizens and boosts revenue but increases strain on the environment.             |
| **Sustainability Focus** | Limit growth to ensure resource availability and reduce environmental impact.              | Slower economic growth                     | Maintains balance between resources and happiness, preventing overpopulation and CO₂ spikes.   |

#### 4.4.4 - Happiness vs. Efficiency

| **Option**              | **Details**                                                                                | **Cost**                                   | **Impact**                                                                                      |
|--------------------------|--------------------------------------------------------------------------------------------|--------------------------------------------|--------------------------------------------------------------------------------------------------|
| **Happiness Priority**   | Focus on building amenities like parks and schools to increase citizen well-being.         | High initial cost                          | Increases happiness but slows infrastructure or industrial development.                        |
| **Efficiency Priority**  | Streamline city operations, focusing on production and resource management.                | Reduced focus on citizen satisfaction      | Improves resource efficiency but risks unhappiness and emigration.                             |


# 5 - Game Interface

## 5.1 - Main Menu
The **Main Menu** provides the following options:
- **Resume Game:** Allows the player to continue a previously saved game.
- **New Game:** Starts a fresh playthrough.
- **Settings:** Accesses customization options for the game.
- **Credits:** Displays information about the development team.
- **Quit:** (Not shown in the mockup but will allow exiting the game).

<img src="img/mock-ups/main-menu.png" style="height:350px"/>

## 5.2 - Game Screen
The **Game Screen** consists of:
- The **city map** where players can view and manage the city layout.
- A **Construction Menu button** to open the building selection menu.
- **Resource indicators** displayed on the left-hand side, showing essential metrics like money, CO₂ levels, population, and happiness.
- A **time tracker** in the top-right corner, indicating the current day and year of the game.

<img src="img/mock-ups/game-screen.png" style="height:350px"/>

## 5.3 - Construction Menu
The **Construction Menu** provides a categorized list of structures available for purchase:
- **Residential Buildings:** Different types of homes for citizens.
- **Public Buildings:** Includes essential infrastructure such as schools or hospitals.
- **Industrial Buildings:** Facilities like factories or power plants.
- **Decorative Elements:** Includes benches, lampposts, and trees for beautifying the city.
- **Terrain Modifications:** Options for adjusting the land, such as clearing or leveling ground.

<img src="img/mock-ups/construction-menu.png" style="height:350px"/>

## 5.4 - Resource Indicators
The **Resource Indicators** are prominently displayed and include:
- **Money:** The city's available funds.
- **CO₂ Levels:** The environmental impact of the city's activities.
- **Population:** The number of citizens living in the city.
- **Happiness:** A measure of the citizens' satisfaction.
- **Time:** Displays the current year and day in the simulation.

<img src="img/mock-ups/resource-indicators.png" style="height:350px"/>

## 5.6 - Settings
The **Settings Menu** offers the following options:
- Toggle between **full screen** and **windowed mode**.
- Change the game language between **French** and **US English**.
- Adjust various audio levels, such as background music and sound effects.

<img src="img/mock-ups/settings-menu.png" style="height:350px"/>

# 6 - End Matter

## 6.1 - Contributors

The following contributors have participated in the creation of this project:

| Photo| Name | Role | Contact (*Click*) |
| ---- | ---- | ---- | ----------------- |
| <img src="https://media.licdn.com/dms/image/v2/D5603AQF7d1atB4eiFw/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1695912635010?e=1737590400&v=beta&t=9tsL6LjQX4VgVNfRXVkTCMgCSFsnqNjhS1gWODDvnO4" width="50">  | Rémy CHARLES | Project Manager | [<img src="https://cdn.pixabay.com/photo/2022/01/30/13/33/github-6980894_1280.png" width="30">](https://github.com/RemyCHARLES) [<img src="https://www.presse-citron.net/app/uploads/2020/06/linkedin-logo.jpg"  width="30">](https://www.linkedin.com/in/r%C3%A9my-charles-2a8960232/) |
| <img src="https://media.licdn.com/dms/image/v2/D4E03AQHqFcMtLtVuag/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1696599167147?e=1737590400&v=beta&t=fP0_-dsh8k1Pqzdg9St89IA98oTJpUxl-Zjnec9cYq4" width="50"> | Pierre GORIN | Program Manager | [<img src="https://cdn.pixabay.com/photo/2022/01/30/13/33/github-6980894_1280.png" width="30">](https://github.com/Pierre2103) [<img src="https://www.presse-citron.net/app/uploads/2020/06/linkedin-logo.jpg"  width="30">](https://www.linkedin.com/in/pierre-gorin-61a784221/) |
| <img src="https://media.licdn.com/dms/image/v2/D4E03AQG4JssEc7tEOQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1695991836011?e=1737590400&v=beta&t=cDj7euLhhSMuTAWQXgUy9WfifxwrWgA5V0FPtkfWlY4" width="50">  | Salaheddine NAMIR | Tech Lead | [<img src="https://cdn.pixabay.com/photo/2022/01/30/13/33/github-6980894_1280.png" width="30">](https://github.com/T3rryc) [<img src="https://www.presse-citron.net/app/uploads/2020/06/linkedin-logo.jpg"  width="30">](https://www.linkedin.com/in/salaheddine-namir-3402471b8/) |
| <img src="https://media.licdn.com/dms/image/v2/D4E03AQFIJpdgeOvvQQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1732199951840?e=1737590400&v=beta&t=f56zRsNW4vCyOKnpsZdMbzHjpf65Piw2tmDyibgPI6E" width="50">  | Alexis LASSELIN | Software Engineer | [<img src="https://cdn.pixabay.com/photo/2022/01/30/13/33/github-6980894_1280.png" width="30">](https://github.com/AlexisLasselin) [<img src="https://www.presse-citron.net/app/uploads/2020/06/linkedin-logo.jpg"  width="30">](https://www.linkedin.com/in/alexis-lasselin-318649251/) |
| <img src="https://media.licdn.com/dms/image/v2/D4D03AQEKY-bD9z6Xdg/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1727448664015?e=1737590400&v=beta&t=8XaWGtukWZ2prhN__wFL9FHRPO1EjAZPAWB37l0A_P8" width="50">  | Camille GAYAT | Software Engineer | [<img src="https://cdn.pixabay.com/photo/2022/01/30/13/33/github-6980894_1280.png" width="30">](https://github.com/camillegayat) [<img src="https://www.presse-citron.net/app/uploads/2020/06/linkedin-logo.jpg"  width="30">](https://www.linkedin.com/in/camille-g-a89114293/) |
| <img src="https://media.licdn.com/dms/image/v2/D4E03AQHUg0HyK6qWfg/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1727178196161?e=1737590400&v=beta&t=47pgQq4QZ0y8jQd3UNqUBX3r5ApDmzlMyNSiMxERM2I" width="50">  | Maxime CARON | Quality Assurance | [<img src="https://cdn.pixabay.com/photo/2022/01/30/13/33/github-6980894_1280.png" width="30">](https://github.com/MaximeAlgosup) [<img src="https://www.presse-citron.net/app/uploads/2020/06/linkedin-logo.jpg"  width="30">](https://www.linkedin.com/in/maxime-caron-dev/) |
| <img src="https://media.licdn.com/dms/image/v2/D4E03AQESvmny4SOxIg/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720217974116?e=1737590400&v=beta&t=OKeRHjaJ6xruw-tmYds5tR4tvTDywG8t52dgC4fen4A" width="50">  | Elone DELILLE | Technical Writer | [<img src="https://cdn.pixabay.com/photo/2022/01/30/13/33/github-6980894_1280.png" width="30">](https://github.com/HiNett) [<img src="https://www.presse-citron.net/app/uploads/2020/06/linkedin-logo.jpg"  width="30">](https://www.linkedin.com/in/elonedelille/) |

## 6.2 - License

This project is licensed under the **MIT License**. You can find the full license text [here](../../LICENSE.md).
Game assets are licensed under the **Creative Commons Attribution 4.0 International License**. You can find the full license text [here](https://creativecommons.org/licenses/by/4.0/).

## 6.3 - Glossary

<details>
<summary>Click to expand</summary>

| Term                | Definition                                                                                   |
|---------------------|---------------------------------------------------------------------------------------------|
| Happiness           | Represents citizen satisfaction and well-being. Maintaining high happiness ensures growth.  |
| Population          | Reflects the city's growth and prosperity.                                                  |
| Game Progression    | Tracks the advancement of the game over time and key milestones.                             |
| Resource Management | Involves balancing resources like CO₂ levels, money, and population to achieve sustainability.|
| CO₂ Levels          | Measure of carbon dioxide emissions in the city, affecting the environment and happiness.    |
| Green Energy        | Eco-friendly energy sources like wind turbines and solar panels.                             |
| Fossil Fuels        | Traditional energy sources like oil refineries, which increase CO₂ emissions.                |
| Landfill            | Space allocated for waste disposal without processing, leading to higher CO₂ emissions.      |
| Financial Focus     | Prioritizing economic growth through industry and tax revenue at the expense of the environment.|
| Environmental Focus | Allocating resources toward green initiatives and eco-friendly policies.                     |
| Short-Term Gains    | Immediate benefits with low costs, often at the expense of long-term sustainability.         |
| Long-Term Planning  | Investments in infrastructure and policies for gradual, sustained improvement.               |
| Carbon Footprint    | Total amount of greenhouse gases generated by human activities, expressed in CO₂ equivalents. |
| Renewable Energy    | Energy sources like wind and solar that have a minimal environmental impact.                 |
| Urban Planning      | Strategic design and organization of city structures to balance growth and sustainability.   |
| Tax Revenue         | Income generated from taxes on citizens and businesses to fund city development.             |

</details>
