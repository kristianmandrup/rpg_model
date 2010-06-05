class Area
  attr_accessor :start_location, :end_location #location
  
  def initialize(start_location, end_location) 
    raise ArgumentError, "Area must be defined using start- and end location objects" if !only_locations?(start_location, end_location)
    @start_location = start_location
    @end_location = end_location   
  end
  
  def only_locations?(start_location, end_location)
    location?(start_location) && location?(end_location)   
  end

  def location?(location)
    location.kind_of? Location    
  end

end
   