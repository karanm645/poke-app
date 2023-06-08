class Api::V1::PokemonController < ApplicationController
  def index
    # find params 
    pokemon = params[:pokemon]
    # create connection firstr
    conn = Faraday.new("https://pokeapi.co")
    # you can call different connections
    response = conn.get("/api/v2/pokemon-form/#{pokemon}/")
    # parse through it
    @pokemon = JSON.parse(response.body, symbolize_names: true)
  end 
end
