class PokeService
  class << self 
    def get_a_pokemon(pokemon)
      # conn = Faraday.new("https://pokeapi.co")
      response = conn.get("/api/v2/pokemon-form/#{pokemon}/")
      parse_data(response)
    end

    private
    def conn
      Faraday.new("https://pokeapi.co")
    end 

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end 
  end 
end 