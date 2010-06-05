module RPG
  share_as :HasCities do    
    describe "#initialize" do 
      it "should start no cities" do
        @subject.cities.should be_empty
      end
    end

    describe "#add_city" do         
      before(:each) do
        @city = City.new 'my city'
      end

      it "should add a city" do
        @subject.cities.should_receive(:add).with(@city) 
        @subject.add_city @city
      end

      it "should NOT add a world" do
        world2 = World.new 'my other world'
        @subject.cities.should_not_receive(:add)
        lambda { @subject.add_city world2 }.should raise_error ArgumentError
      end    
          
      it "should add same city only once" do
        @subject.add_city @city
        @subject.add_city @city
        @subject.should have(1).cities         
      end
    end  

    describe "#add_cities" do 
      before(:each) do
        @city = City.new 'my city'
        @city2 = City.new 'my other city'        
      end

      it "should add multiple worlds" do      
        @subject.add_cities @city, @city2
        @subject.should have(2).cities
      end            
    end 
  end
end