class PrettyPrintedArray
  def initialize  (array)
    @array = array
    @field_size = array.flatten.map{ |e| e.to_s.length}.max
  end
  
  attr_reader :field_size
end  