require "test/unit"

require "pretty_printed_array"

class TestPrettyPrintedArray < Test::Unit::TestCase
  def setup
    @output = <<END_OUTPUT
                            1                            
                         1     1                         
                      1     2     1                      
                   1     3     3     1                   
                1     4     6     4     1                
             1     5    10    10     5     1             
          1     6    15    20    15     6     1          
       1     7    21    35    35    21     7     1       
    1     8    28    56    70    56    28     8     1    
 1     9    36    84    126   126   84    36     9     1 
END_OUTPUT

  @small_output = <<END_SMALL
  1  
 1 1 
1 2 1
END_SMALL

  @rows = @output.each_line.map { |line| line.scan(/\d+/).map { |n| n.to_i  }  }
  @small = PrettyPrintedArray.new(@rows[0..2])
  @large = PrettyPrintedArray.new(@rows)
 end

  def test_field_size
    assert_equal(1, @small.field_size);
    assert_equal(3, @large.field_size);
  end
  
  def test_row_size
    assert_equal(5, @small.row_size);
    assert_equal(@output.each_line.to_a.last.chomp.size, @large.row_size);
  end
  
  def test_to_s
    assert_equal(@small_output, @small.to_s)
    assert_equal(@output, @large.to_s)
  end
end