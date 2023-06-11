class Pokemon < ApplicationRecord
  validates_presence_of :name, 
                        :number,
                        :image,
                        :shiny

  class << self 
    def find_pokemon(poke)
      # next time do find by so the pokemon aren't duplicated in the database 
      create(
        name: poke.name,
        number: poke.number,
        image: poke.image,
        shiny: poke.shiny
      )
    end 
  end 
end
