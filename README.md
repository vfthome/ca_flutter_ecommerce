# Conta Azul - Flutter Test

This repository serves as demonstration for the code interview task provided.

## READ-ME

The progress and content created can be seen in the platforms Notion and Figma, with the URL's bellow.

Watch my progress here:

- [Live Notion Notes URL](https://www.notion.so/vfthome/Conta-Azul-Flutter-Test-978400d03dc641e88a7b0d7717f54ff7?pvs=4)
- [Live Figma Project URL](https://www.figma.com/design/ih1CrRG72WDo9BhaG3OZvf/Conta-Azul---Flutter-Test?node-id=0-1&t=c6yYz5VyncEA2mWQ-1)

# Controle seu negócio e ganhe tempo como ERP Conta Azul

## Flutter Test - GitHub Repository (you should create a fork)

[GitHub - dtodt/ca_flutter_test: Conta Azul Flutter Test](https://github.com/dtodt/ca_flutter_test/tree/main)

## Proposed Solution

[Development process, step by step.](https://www.notion.so/Development-process-step-by-step-4e43efdbac7a4b1fabb6dea79f701ed0?pvs=21)

## Figma Design System & Frontend Reference (Created by VFTHOME)

[FIGMA DESIGN SYSTEM & FRONTEND REFERENCE](https://www.figma.com/design/ih1CrRG72WDo9BhaG3OZvf/Conta-Azul---Flutter-Test?node-id=17-58&t=GLcg6x2M8z6AGA6T-1)

# E-commerce Instructions

## Features Required

> The project goal is to develop a mobile application with test coverage and the following features:

- Splash Art: Animation, responsive UI/UX, Cropping container effect on “Conta Azul” logo, Circle animation and BG color transitions, logo color changing animation from: blue > white.
- Authentication: Login, Logout, User Creation, Password Recovery, Delete User.
- Home (fake API list): Fake API response list.
- Favorites: Items that were marked as favorite by the user.
- User Offline Warning: User offline popup banner that gets displayed when user is offline.

## Software Architecture Adopted

> The proposed software architecture used by the project is detailed below, including MiniCore Arc images and diagrams.

## Architecture Reference

[ARCHITECTURE.md](https://github.com/dtodt/ca_flutter_test/blob/main/ARCHITECTURE.md)

## Additional Documentation

- **MiniCore Arc - Documentation:**

    **Software architecture proposal for Flutter/Dart**
    *Inspired by Robert C. Martin’s - Clean Architecture.*

    ![MiniCore Arc](https://prod-files-secure.s3.us-west-2.amazonaws.com/79bd2752-2185-48db-89c9-3d5ee11bb8de/bbfe52aa-e946-44f2-8038-a1b1c1c4244b/Untitled.png)

    1. **UI (Presentation Layer):** Flutter widgets that compose the user interfaces of the application.
    2. **Interactor (Business Logic Layer):** Responsible for defining business logic of the feature, managing its state, entities, interfaces, repositories, services, validations, DTOs, and current state.
    3. **Data (Data Layer):** Responsible for implementing the services and repositories defined in the Interactor Layer (business logic layer).

- **Flutter Modular - Documentation:**

    [Flutter Modular](http://modular.flutterando.com.br/)

- **Flutter TDD - Step by step:**

# General Rules - Must Read

## 1) Commits

[Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)

### Common commit title types

- [FIX]
- [FEAT]
- [BREAKING CHANGE]
- Other used titles: build, chore, ci, docs, feat, fix, perf, refactor, revert, style, test.

### Commit Structure

> [TYPE_CHOOSEN] FEATURE_NAME: mandatory description text goes here…
>
> [OPTIONAL BODY HERE]
>
> [Optional footer → “ Best regards, Vitor F. Thomé. ”]

## 2) Language & Naming Conventions

Language used in the project is English. All comments and naming conventions should be in English and follow the rules below:

- **Data sources:**
  - Class name: `<Name>DataSource`
  - File name: `<name>_ds.dart`
  - Folder name: `datasources/`
  - Parent folder name: `data`
- **Data source contracts:**
  - Class name: `I<Name>DataSource`
  - File name: `i_<name>_ds.dart`
  - Folder name: `datasources/`
  - Parent folder name: `interactor`
- **Data transfer objects (DTOs):**
  - Class name: `<Name>DTO`
  - File name: `<name>_dto.dart`
  - Folder name: `dtos/`
  - Parent folder name: `data` or `interactor`
- **Entities:**
  - Class name: `<Name>Entity`
  - File name: `<name>_entity.dart`
  - Folder name: `entities/`
  - Parent folder name: `interactor`
- **Pages:**
  - Class name: `<Name>Page`
  - File name: `<name>_page.dart`
  - Folder name: `pages/`
  - Parent folder name: `ui` or `(public)`
- **Repositories:**
  - Class name: `<Name>Repository`
  - File name: `<name>_repository.dart`
  - Folder name: `repositories/`
  - Parent folder name: `data`
- **Repository contracts:**
  - Class name: `I<Name>Repository`
  - File name: `i_<name>_repository.dart`
  - Folder name: `repositories/`
  - Parent folder name: `interactor`
- **Services:**
  - Class name: `<Name>Service`
  - File name: `<name>_service.dart`
  - Folder name: `services/`
  - Parent folder name: `data` or `interactor`
- **Use Cases:**
  - Class name: `<Name>UseCase`
  - File name: `<name>_uc.dart`
  - Folder name: `usecases/`
  - Parent folder name: `interactor`
- **Value Objects:**
  - Class name: `<Name>VO`
  - File name: `<name>_vo.dart`
  - Folder name: `vos/`
  - Parent folder name: `interactor`
- **Widgets:**
  - Class name: `<Name>Widget`
  - File name: `<name>_widget.dart`
  - Folder name: `widgets/`
  - Parent folder name: `ui`

Keep these files inside the feature that they belong or in a `shared` folder if its use is common.

> Special case for pages if using routefly, they are kept inside the `(public)` folder.

## 3) Dependency Injection

Package Adopted: flutter_modular

- [Flutter Modular](https://pub.dev/packages/flutter_modular)
- [Video tutorial](https://www.youtube.com/watch?v=EdHbE817gyo)
- [Documentation - GitHub](https://github.com/Flutterando/modular)

## 4) App Routes

Package Adopted: flutter_modular

- [Flutter Modular](https://pub.dev/packages/flutter_modular)
- [Video tutorial](https://www.youtube.com/watch?v=EdHbE817gyo)
- [Documentation - GitHub](https://github.com/Flutterando/modular)

## 5) State Management

Package Adopted: asp

- [ASP](https://pub.dev/packages/asp)
- Video tutorials:
  - [Video 1](https://www.youtube.com/watch?v=lYOrypsWMOA)
  - [Video 2](https://www.youtube.com/watch?v=d-ZMAMziomA&t=207s)
  - [Video 3](https://www.youtube.com/watch?v=zeu5DMMXP2E)
  - [Video 4](https://www.youtube.com/watch?v=YN-hrPCX2cI)
- [Documentation - GitHub](https://github.com/Flutterando/asp)
- [Documentation - Flutterando](https://asp.flutterando.com.br)

## 6) Use the company software architecture, and good luck

![White 2](https://prod-files-secure.s3.us-west-2.amazonaws.com/79bd2752-2185-48db-89c9-3d5ee11bb8de/8f3ad8b1-21a4-4843-874a-d329dc49d6a2/White_2.png)
