class Api::V1::PokemonController < ApplicationController
  def index
    # find params 
    begin
      name = params[:pokemon].downcase
      @pokemon = PokeFacade.get_a_pokemon(name) 
      render json: PokemonSerializer.new(@pokemon)
    rescue JSON::ParserError
      render json: { error: "invalid JSON format, check the pokemon name/number"}, status: :unprocessable_entity
    end
    #raise ErrorsController if @pokemon.nil?
    
  # rescue NotVisibleError => e  
  #   render json: { error: e.message }, status: :unprocessable_entity 
  # rescue JSON::ParserError => e
  #   render json: { error: "Failed to parse API response: #{e.message}" }, status: :unprocessable_entity
  # rescue Faraday::Error => e  
  #   render json: { error: "API request failed #{e.message}"}, status: :unprocessable_entity


    # # create connection first
    # conn = Faraday.new("https://pokeapi.co")
    # # you can call different connections
    # response = conn.get("/api/v2/pokemon-form/#{pokemon}/")
    # # parse through it
    # data = JSON.parse(response.body, symbolize_names: true)
    # @pokemon = Pocketmonster.new(data)
  end 
end
