class PrettyPrintedArray
  def initialize  (array)
    @array = array
    @field_size = array.flatten.map{ |e| e.to_s.length}.max
    @row_size = @field_size * (array.last.size * 2 - 1)
  end
  
  attr_reader :field_size, :row_size
  
  def to_s
    @array.map do |row|
      row.map { |n| n.to_s.center(field_size) }.join(" " * field_size).center(row_size)
    end.join("\n") + "\n"
  end
end  