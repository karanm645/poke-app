class Api::V1::PokemonController < ApplicationController
  def index
    # find params 
    name = params[:pokemon]
    @pokemon = PokeFacade.get_a_pokemon(name) 
    render json: PokemonSerializer.new(@pokemon)
    # # create connection first
    # conn = Faraday.new("https://pokeapi.co")
    # # you can call different connections
    # response = conn.get("/api/v2/pokemon-form/#{pokemon}/")
    # # parse through it
    # data = JSON.parse(response.body, symbolize_names: true)
    # @pokemon = Pocketmonster.new(data)
  end 
end
