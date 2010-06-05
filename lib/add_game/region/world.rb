module RPG
  class World < Place
    include RPG::Cities    

    def initialize name
      super
      init_cities
    end
    
  end
end
