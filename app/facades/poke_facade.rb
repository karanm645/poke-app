class PokeFacade
  # (below) everything inside is made into a class method
  class << self
    def get_a_pokemon(pokemon)
      # conn = Faraday.new("https://pokeapi.co")
      # response = conn.get("/api/v2/pokemon-form/#{pokemon}/")
      # data = JSON.parse(response.body, symbolize_names: true)
      data = PokeService.get_a_pokemon(pokemon)
      poke = Pocketmonster.new(data)
      Pokemon.find_pokemon(poke)
    end 
  end 
end 