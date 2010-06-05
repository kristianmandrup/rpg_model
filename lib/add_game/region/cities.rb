module RPG
  module Cities
    attr_accessor :cities

    def init_cities
      @cities = Set.new      
    end
    
    def add_city city
      raise ArgumentError, "#{city} must be a City" if !city.kind_of? RPG::City
      cities.add city
    end
    
    def add_cities *cities
      raise ArgumentError, "#{cities} contains one or more non-City objects" if !only_cities?(cities)
      @cities.merge cities
    end 
    alias_method :add_city, :add_cities

    protected
      def only_cities?(cities)                      
        cities.all?{|w| w.kind_of? RPG::City }      
      end
  end
end