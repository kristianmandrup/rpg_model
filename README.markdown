# RPG Model #
This project is an attempt to create a generic RPG model suitable for setting up a basic infrastructure to build on for any kind of RPG project, be it a RPG game
or a RPG game manager etc.

## Why? ##
I use this project as a way to really get into Behavior Driven Development, using RSpec 2, Cucumber and Mocking frameworks. 

## Usage ##
       
<pre>
game = RPG::Game.new
world = World.new
game.start world
...
</pre>

In the near future I will provide a DSL, something like the following: 

<pre>
  
world1 = World.new 'my world' do
  ...
end 

world2 = World.new 'my other world'  

city2 = City.new 'my other city' do
  ...
end 

  
RPG::Game.new 'my game' do
  add_worlds world1, world2
  with_world 'my world' do
    add_cities city1, city2
  end

  add_world 'dark world' do
    ...
  end

  with_world 'my other world' do
    add_city 'my city' do
      ...
    end
  end 
end
</pre>


