

Repositories are contracts, interface
so dont test
Entity as well, is a blueprint
The place have actual implementations, domain layer, usecase



Why do we testing

The reason is because we want to make sure that functionality

Unit is a class

functionalities are methods, function
test the process that it takes in order to do that
will prevent any bug


Steps

* What does the class depend on ?

For ex, our class depend on http library
we dont use the real http library because,
we want to be able to control that dependency, right


Sending a request get, this will go talk to the server, gives
back us.

We should create s fake version, its only talk to us

We dont want to involve any real world dependencies
any real external services, because we dont have control over t
them

* How can we create a fake version of the dependency?

We will use two packages 
1. mocktail, contains more boilerplate code
2. mockito, you have add your own code


Creation
Inside test function, first params is to this test should do

Making sure, follow three steps
1. Arrange, we are putting together everything we need for 
our function to work
2. Act, doing something with the usecase
3. Assert



First, start inside setup function, it is the place 
instance new usecase. Also exist, setupAll, in which
will do once for everyone before all test

In this case usecase depends on repository, so create an mock
for this class and pass it to usecase as parameters

Then usecase need params, so instance in the section
arrange, because we need to control, we dont pass it 
in the same instance.

Repository is the last person in our chain of command.
Ok, so then, we will use when function
and we will say when the last person (repository) create 

- 003 Create test part 2 and finish stubbing.mp4

Stubbing, stealing the answer of last person of comand chain 

When use when function, instance the params with the any() function
then, we should use the thenAnswer function if we want to wait an answer,
if not it should be thenReturn.
THen we should use Right o left of Dartz


In the ACT section, we should use the params
so, at first its a recommendation to have a empty population for this class,
ok we will use the constructor


- 004 Create test part 3 and done with Act and Assert.mp4


