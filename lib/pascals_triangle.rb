class PascalsTriangle
  include Enumerable
  
  def initialize
    @last_row = nil
  end
  
  def next_row
    @last_row = if @last_row.nil?
      [1]
    elsif @last_row == [1]
      [1, 1]
    else
      [1] + @last_row.enum_for(:each_cons, 2).map { |l, r| l+r} + [1]
    end    
  end
  
  def each(limit = nil)
    if limit.nil?
      0.upto(1.0/0.0) { yield next_row}
    else
      limit.times { yield next_row }
    end
  end
  
end