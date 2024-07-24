
# Login with Clean Architecture

1 User interface
    the user click on login, it triggers the next step

2 BLoc Business Logic Component handles the login process

3 Usecases, will hand over the login process to the repositories.
    Domain layer exit 

4 Repositories Data operations, define the contract between data and domain layer
    They will make a call to the data source.

5 Datasource Data retrieval, provide data from external sources
    They interact with repositories   and continue  to the next step

6 Datasource Server response 

7 Datasource sends the response back to the repository.

8 Usecase

9 Bloc 

10 View