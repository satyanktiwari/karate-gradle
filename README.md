# karate-gradle
In the build.gradle file add the following dependencies 
  
  'dependencies {
    testCompile group: 'junit', name: 'junit', version: '4.12'
    testCompile(
            "com.intuit.karate:karate-junit4:0.9.2",
            "com.intuit.karate:karate-apache:0.9.2"
    ) }'
    
    
 'Clone the api-playground project from github > install and start using npm'
 
 Contains the example for scenario outline using the cucumber approach and the karate suggested approach
  Following description is given in the karate project:
 
 'Cucumber approach:
      Cucumber has a concept of Scenario Outlines where you can re-use a set of data-driven steps and assertions, and the data can be     declared in a very user-friendly fashion. Observe the usage of Scenario Outline: instead of Scenario:, and the new Examples: section.'
  
  'Karate approach:
    The limitation of the Cucumber Scenario Outline: seen above is that the number of rows in the Examples: is fixed. But take a look at how Karate can loop over a *.feature file for each object in a JSON array - which gives you dynamic data-driven testing, if you need it.' 
    
    Note:
    When using .json file make sure the square brackets and curly braces are at the correct position to ensure that there are no failures.
    
