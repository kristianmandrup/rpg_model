module RPG
  class Place < NamedThing

    attr_accessor :location
    
    def initialize name
      super
      @location = 'unknown'
    end    
  end
end
