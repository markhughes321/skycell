# SkyCell QA Challenge

## Overview
This repository contains the solution for the SkyCell QA Challenge, which involves API testing using the Karate API testing framework.

## Framework
### Karate API Testing
Karate API is an open-source Java tool designed for API testing and performance automation.

## Installation

To get started with this project, follow these steps:

1. Clone the repository:

```bash
git clone https://github.com/markhughes321/skycell
```

2. Install Node.js modules:

```bash
npm install
```

## Create a .env file

Create a .env file in the root folder with the project's environment variables. You can refer to the .exampleEnv file for guidance.

## Running Tests Locally

To run tests locally, navigate to the project's root directory and use the following commands:

```python
# Runs all feature files
npm run karate:run:project

# Runs the project using @ tags, you can set the tag in the .env
npm run karate:run:feature

```

## Running Tests in Github Actions

To execute tests on GitHub Actions, follow these steps:

1. Visit the [GitHub Actions](https://github.com/markhughes321/skycell/actions) page.
2. Click on the 'Nightly Karate Tests' workflow.

<img width="703" alt="Screenshot 2023-12-06 at 10 23 16" src="https://github.com/markhughes321/skycell/assets/9667977/8d4f9183-2e1c-42ae-95f6-218ae9c96322">

Then you can trigger the workflow manually. 

<img width="452" alt="Screenshot 2023-12-06 at 10 24 26" src="https://github.com/markhughes321/skycell/assets/9667977/caf24e3a-4cd7-42e4-a7fe-c3421c857a54">

## Cucumber Reports

Cucumber Reports will be generated as a .zip file once the GitHub Action job has completed.

<img width="915" alt="image" src="https://github.com/markhughes321/skycell/assets/9667977/858a848c-77fb-4e8b-8908-a79f82dc3d64">

You can download and open them locally in your browser to view the test report.

<img width="823" alt="image" src="https://github.com/markhughes321/skycell/assets/9667977/0d2f04ab-c69e-4038-91bc-613fa18334e7">


## Documentation

[Karate API Official Documentation](https://github.com/karatelabs/karate)

## Dependencies

[Java 11](https://www.oracle.com/uk/java/technologies/javase/jdk11-archive-downloads.html)

[Maven](https://www.baeldung.com/install-maven-on-windows-linux-mac)

[Video Tutorial](https://www.youtube.com/watch?v=9S5lqB11OPI&t=183s)
