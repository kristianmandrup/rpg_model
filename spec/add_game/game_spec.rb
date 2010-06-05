require 'spec_helper'

module RPG   
  describe "Game" do
    describe "#start" do 
      before(:each) do
        @game = Game.new 'my game'
        @world = World.new 'my world'
      end        
      
      it "should add a world" do      
        @game.worlds.should_receive(:add).with(@world) 
        @game.start @world
      end

      it "should make a first world available" do
        @game.start @world
        @game.worlds.first.should equal(@world)
      end
    end     
    
    describe "#add_world" do 
      before(:each) do
        @game = Game.new 'my game'
        @world = World.new 'my world'
      end

      it "should add same world only once" do
        @game.add_world @world
        @game.add_world @world        
        @game.should have(1).worlds
      end      
      
      it "should NOT add a city" do      
        city  = City.new 'my city'
        @game.worlds.should_not_receive(:add)
        lambda { @game.add_world city }.should raise_error ArgumentError
      end      
    end
      
    describe "#add_worlds" do 
      before(:each) do
        @game = Game.new 'my game'
        @world = World.new 'my world'
        @world2 = World.new 'my other world'        
      end

      it "should add multiple worlds" do      
        @game.add_worlds @world, @world2
        @game.should have(2).worlds
      end            
    end
  end
end
