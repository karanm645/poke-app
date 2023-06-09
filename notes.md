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
1. create database to save pokemon --> make sure table is not the same name as poros
2. validate attributes
3. dream drive in facade
   1. dd model method in facade and give it the argument of pokemon
4. create the method in model
   1. use create action to create pokemon in find_poke method
      1. revise** actually do a find or create_by so that the database doesn't duplicate the pokemon
5. create a test on what the json object should look like
   1. create spec/api/v1/ get pokemon test
   2. start with a query param
   3. insert route with the query param
   4. test response and hash
   5. run test
      1. create route in routes file
6. Create controller --> 
   1. find the pokemon by name using the facade method 
   2. install serializer--> ruby fast json
      1. rails g Serializer Pokemon name number image shiny
         1. skips handrolling and creating a hash, turn each thing into key value pair
   3. go back to controller and render json serializer with the facade as the argument


## Error handling
- error for when user enters a number higher than the amount of pokemon
- error for if name is incorrect 
### followed this article: https://medium.com/rails-ember-beyond/error-handling-in-rails-the-modular-way-9afcddd2fe1b

1. create file under lib/error
2. include that file in the config/application.rb file

### the easier way
1. begin before the logic
2. add rescue JSON::Parser error for anticipated error when user enters wrong name or number of pokemon
3. if else statement in view template for if pokemon is nil, what error message should be sent

## VCR and Webmock

## Data stored into table should be changed