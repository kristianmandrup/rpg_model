module RPG 
  class Game < NamedThing
    attr_accessor :worlds
    
    def initialize name
      super
      @worlds = Set.new
    end    

    def add_worlds *worlds
      raise ArgumentError, "#{worlds} contains one or more non-World objects" if !only_worlds?(worlds)
      @worlds.merge worlds
    end 

    protected
      def only_worlds?(worlds)                      
        worlds.all?{|w| w.kind_of? RPG::World }      
      end
    
    alias_method :start, :add_worlds
    alias_method :add_world, :add_worlds
  end
end