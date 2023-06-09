## CONSUMING API
1. Set up environment
   1. Gems
   2. RSPEC 
   3. Controller Logic

2. Render views 
   1. create a features spec test
   2. created a favicon.io file
   3. create a form in root page with the api/v1/pokemon tag that renders which pokemon you want to search for
   4. after the search button is submitted, it should take you to the pokemon index page where it has the name, id and picture of the pokemon
   5. include another form with the api/v1/pokemon tag that prompts user to search for another pokemon

3. controller logic
   1. string interpolate to find particular pokemon


4. Poros
   1. first helper class to do is poro
   2. create a class with a hash, create method we want to call in our view
      1. we can make changes in the poro instead of making changes to every single page that calls the pokemon hash
      2. everywhere the methods are, we can just change it in the poros
   3. in the pokemon controller, rename @pokemon to data
      1. add @pokemon instance variable to equal Pokemon.new(data)
      2. everything in view page we want to make into method
   4. Back in poro, initialize the data and extract the attributes from the hash, you can also manipulate it to i.e. capitalize
      1. create attr_reader with name, number, and image
   5. Go to pokemon index page and change how you call the hash, to reflect the newly created poros
   6. ***very important*** the poros should not be the same name as the model --> i learned the hard way 
5. Facade
   1. where we do the work for our call
   2. first take the controller logic and put it into a method into the facade: 
      1. conn
      2. response
      3. data
      4. @pokemon instance 
   3. This creates a two line controller
   4. we want to move the api call to a service
      1. put the conn, response, and data in the method(pokemon)
      2. create a private section and refactor the get_a_pokemon method
         1. create a new def conn method
         2. create a parse_data(response) method
6. Testing
   1. poros -- initialize, this is an instance of, each of these methods return what you want it to
   2. facade -- what the data type is -- hash, cettain amount of keys
   3. in service you want to expect -- going through hash, expect it to have key[:id] to be integer (both of those)
   4. VCR or webmock creates mock response for API so you don't call it when you're on your test
      1. good for when 10 ppl working together

## Exposing API
1. create database to save pokemon