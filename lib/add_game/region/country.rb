module RPG
  class Country < Place
    include Cities
    
    def initialize name
      super 
      init_cities
    end
  end
end
