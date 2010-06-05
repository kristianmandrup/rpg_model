require 'spec_helper'
require 'has_cities'

module RPG   
  describe "World" do
    before(:each) do
      @subject = World.new 'my world'      
    end

    include HasCities
       
  end
end
