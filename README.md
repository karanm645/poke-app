# ![image](https://github.com/karanm645/poke-app/assets/79548116/24d029c9-6f96-475a-867c-d5745e91fc4b)
## My Poke APP

<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-this-project">About This Project</a>
      <ul>
        <li>
          <a href="#learning-goals-of-project">Learning Goals of Project</a>
        </li>
      </ul>
      <ul>
        <li><a href="#versions">Versions</a></li>
      </ul>
      <ul>
        <li><a href="#important-gems">Important Gems</a></li>
      </ul>
      <ul>
        <li><a href="#database-design">Database design</a></li>
      </ul>
      <ul>
        <li><a href="#local-setup">Local Setup</a></li>
      </ul>
    <li><a href="#endpoints">Endpoints</a>
      <ul>
      <li><a href="#overview">Overview</a></li>
      </ul>
    </li>
  </ol>
</details>

## About This Project
This is a back-end project that consumes the [Poke API](https://pokeapi.co/) and exposes all Pokemon based on their number and name. I followed a tutorial by SageOfCode that helped refresh my memory on how to [consume](https://www.youtube.com/watch?v=NXg3oE5JMm0&t=1579s) and [expose](https://www.youtube.com/watch?v=BkY1fWEFmYg&t=536s) APIs.

### Learning Goals of Project
My main goal for this project is to create an API quickly for front-end developers to consume. I approached it by watching [SageOfCode](https://www.youtube.com/watch?v=NXg3oE5JMm0) and the tips and techniques he had were phenomenal -- I highly suggest folks to check it out if you want to brush up your API spinning skills.

### Versions
- Ruby 2.7.2
- Rails 7.0.5

### Important Gems
Testing: [rspec-rails](https://github.com/rspec/rspec-rails), [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)

API: [Fast JSON API](https://github.com/Netflix/fast_jsonapi), [Faraday](https://github.com/lostisland/faraday), [Figaro](https://github.com/laserlemon/figaro)

### Database Design
<img width="236" alt="image" src="https://github.com/karanm645/poke-app/assets/79548116/c638c03d-cd30-4b42-9a45-7cc3399d0657">

### Local Setup

1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Setup the database: `rails db:create`
4. Run migrations: ` rails db:migrate`

## Endpoints
All endpoints can be viewed by running the `rails server` command in your terminal. In your browswer, type in `http://localhost:3000/{endpoint_get_request}`

### Overview
| Request Type  | URI          |  Details |
| ------------- | ------------- |  --------  |      
| GET  |  /api/v1/pokemon/pokemon={number/name}     | A Pokemon based on name/number can be seen |

### Show a Pokemon the user has searched for:
```ruby
GET /api/v1/pokemon?pokemon=mew
* No body required
```

Response: 
```ruby
{
    "data": {
        "id": "19",
        "type": "pokemon",
        "attributes": {
            "name": "Mew",
            "number": "151",
            "image": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/151.png",
            "shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/151.png"
        }
    }
}
```

## Running the tests

Run `bundle exec rspec` to run the test suite
