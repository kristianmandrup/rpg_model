module RPG
  class Region < Place

    def self.type_hierarchy
      [:world, :union, :country, :city_state, :city]
    end
    
    def initialize name
      super
    end
  end
end
