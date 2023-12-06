# SkyCell QA Challenge

## Frameowrk
### Karate API Testing
Karate API was used for this challenge. Karate is an open-source java tool used for API testing and performance automation.

## Installation

Clone the repository

```bash
git clone https://github.com/markhughes321/skycell
```

Install node modules

```bash
npm install
```

## Create a .env file

In the root folder, create a .env file with the projects environment variables. Please see the .exampleEnv for reference.

## Running Tests Locally

Once you are in the root directory, you can run the project using the below commands

```python
# Runs all feature files
npm run karate:run:project

# Runs the project using @ tags, you can set the tag in the .env
npm run karate:run:feature

```

## Running Tests in Github Actions

To run the tests on Github Actions click here [here](https://github.com/markhughes321/skycell/actions).

Click the GitHub Action 'Nightly Karate Tests' button.

<img width="703" alt="Screenshot 2023-12-06 at 10 23 16" src="https://github.com/markhughes321/skycell/assets/9667977/8d4f9183-2e1c-42ae-95f6-218ae9c96322">

Then you can trigger the workflow manually. 

<img width="452" alt="Screenshot 2023-12-06 at 10 24 26" src="https://github.com/markhughes321/skycell/assets/9667977/caf24e3a-4cd7-42e4-a7fe-c3421c857a54">

## Cucumber Reports

The Cucumber Reports will be attached as .zip file once the Github Action job has completed. 

You can download them and open them in your browser locally to see the test report.

<img width="915" alt="image" src="https://github.com/markhughes321/skycell/assets/9667977/858a848c-77fb-4e8b-8908-a79f82dc3d64">


## Documentation

[Karate API Official Documentation](https://github.com/karatelabs/karate)

## Dependencies

[Java 11](https://www.oracle.com/uk/java/technologies/javase/jdk11-archive-downloads.html)

[Maven](https://www.baeldung.com/install-maven-on-windows-linux-mac)

[Video Tutorial](https://www.youtube.com/watch?v=9S5lqB11OPI&t=183s)
