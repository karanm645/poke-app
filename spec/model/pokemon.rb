require 'rails_helper'

RSpec.describe Pokemon, type: :model do 
  describe "validations" do 
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:number)}
    it { should validate_presence_of(:image)}
    it { should validate_presence_of(:shiny)}
  end 
end 