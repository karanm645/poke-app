require 'rails_helper'

RSpec.describe "as a visitor" do 
  describe "when I search for a Pokemon" do 
    it "I see results" do 
      visit root_path
#save_and_open_page
      fill_in :pokemon, with: "Pikachu"

      click_button "Search"

      expect(current_path).to eq(api_v1_pokemon_index_path)

      expect(page).to have_content("Pikachu")
      expect(page).to have_content("Number: 25")
    end 
  end 
end 