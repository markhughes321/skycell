# Karate API Testing

Karate is an open-source tool to for API test and performance automation.

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

## Usage

Once you are in the root directory, you can run the project using the below commands

```python
# Runs all feature files
npm run karate:run:project

# Runs the project using @ tags, you can set the tag in the .env
npm run karate:run:feature

```

## Documentation

[Karate API Official Documentation](https://github.com/karatelabs/karate)

## Dependencies

[Java 11](https://www.oracle.com/uk/java/technologies/javase/jdk11-archive-downloads.html)

[Maven](https://www.baeldung.com/install-maven-on-windows-linux-mac)

[Video Tutorial](https://www.youtube.com/watch?v=9S5lqB11OPI&t=183s)