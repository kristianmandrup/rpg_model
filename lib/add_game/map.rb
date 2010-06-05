# The smallest map quare is 10 x 10 feet
# Any area can be at any map level which is a 10 multiple of 10 x 10 feet, fx 100 x 100 ft, 1.000 x 1.000 ft etc
# The largest squares are 1.000.000 ft x 1.000.000 ft = 300 x 300 km. 
# 
# A location is given by A.B.C.a.b.c, fx [9:1], [4.2:3:7], [5.5.3:2.3.0] and so on to greater and greater precision. Each level below A allows coordinates from 0 to 9.  
# 3.2.0 can be written short as 3.2 which implies the same.
# 
# At the "A" level there are 0..100, allowing for a map of 30.000 km x 30.000 km
# 
# - A 300 x 300 km
# - B 30 x 30 km
# - C 3 x 3 km
# - a 300 x 300 m
# - b 30 x 30 m
# - c 3 x 3 m
# 
# A map can be anchored to a given level and span a given area at that level, fx [4.2:3.7] to [4.3:3.8]
# Any point on this map is then calculated relative to the map anchor point (top left).
# Fx [0:3] is equivalent to [4.2&0:3.7&3] and [0.2:3.4] to [4.2&0.2:3.7&3.4]
# 
# A regional structure that spans an area does this by having box area at various levels. 
# Fx a country:
# 
# [2:3], [2.3:2.8]-[2.6:3.0] and so on in a fractal fashion.


module RPG
  class Map < NamedThing

    attr_accessor :location
    
    def initialize name
      super
      @location = 'unknown'
    end    
  end
end
