module RPG
  class Region < Place    

    def self.hierarchy
      [:world, :union, :country, :city_state, :city]
    end
    
    def initialize name
      super
    end
  end
end
