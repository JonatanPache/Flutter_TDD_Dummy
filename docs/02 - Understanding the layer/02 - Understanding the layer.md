## Domain - Entities
Represent the core data models of the application.
They define the structure (blueprint)and properties of the data coming from the server
Create an entity to be passed around (transmit) in the application.
Entity!=model

## Domain - Repositories
Define contract between data layer and domain layer.
would define structures of how stuff is suppose to look like
blueprint of what functionalities we will be carrying out in application
DIP principle.

## Domain - Usecases
Business logic of application.
They depend on the repository and call its methods to perform data operations
Usecases enforce de SRP principle and focus on focus on specific functionalities

## Data - sources
provide the actual data from external source (API, databases)
They implment the repository interfaces defined in the domain layer
data sources promote modularity and adher to the DIP principle


## Data - repositories
Repositories have the implementation of the repository contract defined in the domain layer.
They interact with data sources to retrieve data
repository implementations allow switching data sources without modifying the domain layer

## Presentation - Bloc/Cubit
Bloc cubit manages the state of the UI and business logic
it depends on usecase to execute business operations
bloc/ cubit omits states to the UI, decoupling it from business logic.


## TDD (Test driven development)
Involves writing tests before implementing the actual code.
each layer and module can be tested independently
TDD helps in achieving better code quality and fewer bugs.
Before implement data sources

## Dependency injection
is used to provide dependencies to different layers of the application
it helps in managing the dependencies and allows easy swapping of implementations
For example getit can be used for dependency injection







