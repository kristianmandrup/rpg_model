require 'spec_helper'
require 'has_cities'

module RPG   
  describe "Country" do
    before(:each) do
      @subject = Country.new 'my country'      
    end

    include HasCities
       
  end
end
