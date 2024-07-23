# Controle seu negócio e ganhe tempo como ERP Conta Azul

## Flutter Test - GitHub Repository (you should create a fork)

[GitHub - dtodt/ca_flutter_test: Conta Azul Flutter Test](https://github.com/dtodt/ca_flutter_test/tree/main)

### Proposed Solution

[Development process, step by step.](https://www.notion.so/Development-process-step-by-step-4e43efdbac7a4b1fabb6dea79f701ed0?pvs=21)

### Figma Design System & Frontend Reference (Created by VFTHOME)

[FIGMA DESIGN SYSTEM & FRONTEND REFERENCE](https://www.figma.com/design/ih1CrRG72WDo9BhaG3OZvf/Conta-Azul---Flutter-Test?node-id=17-58&t=GLcg6x2M8z6AGA6T-1)

## E-commerce Instructions

### Features Required

> The project goal is to develop a mobile application with test coverage and the following features:

- Splash Art: Animation, responsive UI/UX, Cropping container effect on “Conta Azul” logo, Circle animation and BG color transitions, logo color changing animation from: blue > white.
- Authentication: Login, Logout, User Creation, Password Recovery, Delete User.
- Home (fake API list): Fake API response list.
- Favorites: Items that were marked as favorite by the user.
- User Offline Warning: User offline popup banner that gets displayed when user is offline.

## Software Architecture Adopted

> The proposed software architecture used by the project is detailed below, including MiniCore Arc images and diagrams.

### Architecture Reference

[ARCHITECTURE.md](https://github.com/dtodt/ca_flutter_test/blob/main/ARCHITECTURE.md)
[TDD - Test Driven Design with Clean Architecture](https://resocoder.com/2019/08/27/flutter-tdd-clean-architecture-course-1-explanation-project-structure/)

### Additional Documentation

- **MiniCore Arc - Documentation:**

    **Software architecture proposal for Flutter/Dart**
    *Inspired by Robert C. Martin’s - Clean Architecture.*

    ![MiniCore Arc](https://github.com/Flutterando/minicore/raw/main/imgs/image2.png)

    1. **UI (Presentation Layer):** Flutter widgets that compose the user interfaces of the application.
    2. **Interactor (Business Logic Layer):** Responsible for defining business logic of the feature, managing its state, entities, interfaces, repositories, services, validations, DTOs, and current state.
    3. **Data (Data Layer):** Responsible for implementing the services and repositories defined in the Interactor Layer (business logic layer).

- **Flutter Modular - Documentation:**

    [Flutter Modular](http://modular.flutterando.com.br/)

- **Flutter TDD - Step by step:**

## General Rules - Must Read

### 1) Commits

[Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)

#### Common commit title types

- [FIX]
- [FEAT]
- [BREAKING CHANGE]
- Other used titles: build, chore, ci, docs, feat, fix, perf, refactor, revert, style, test.

#### Commit Structure

> [TYPE_CHOOSEN] FEATURE_NAME: mandatory description text goes here…
>
> [OPTIONAL BODY HERE]
>
> [Optional footer → “ Best regards, Vitor F. Thomé. ”]
>
> EXAMPLE:
>
> [FEAT] Onboarding Feature: fully functional onboarding feature.
>
> Changelog:
>
> - Shared widgets updated.
> - Core project interfaces updated.
> - Assets added.
> - Design System improvements.
> - Testing architecture using a StateEntity for housing feature atoms.
> - Development of business logic for Onboarding feature.

Best regards, Vitor.

### 2) Language & Naming Conventions

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

### 3) Dependency Injection

Package Adopted: flutter_modular

- [Flutter Modular](https://pub.dev/packages/flutter_modular)
- [Video tutorial](https://www.youtube.com/watch?v=EdHbE817gyo)
- [Documentation - GitHub](https://github.com/Flutterando/modular)

### 4) App Routes

Package Adopted: flutter_modular

- [Flutter Modular](https://pub.dev/packages/flutter_modular)
- [Video tutorial](https://www.youtube.com/watch?v=EdHbE817gyo)
- [Documentation - GitHub](https://github.com/Flutterando/modular)

### 5) State Management

Package Adopted: asp

- [ASP](https://pub.dev/packages/asp)
- Video tutorials:
  - [Video 1](https://www.youtube.com/watch?v=lYOrypsWMOA)
  - [Video 2](https://www.youtube.com/watch?v=d-ZMAMziomA&t=207s)
  - [Video 3](https://www.youtube.com/watch?v=zeu5DMMXP2E)
  - [Video 4](https://www.youtube.com/watch?v=YN-hrPCX2cI)
- [Documentation - GitHub](https://github.com/Flutterando/asp)
- [Documentation - Flutterando](https://asp.flutterando.com.br)

### 6) Use the company software architecture, and good luck!

<img src="assets/images/vfthome.png" alt="vfthome" width="400"/>
