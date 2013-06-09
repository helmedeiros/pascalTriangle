require 'coveralls'
Coveralls.wear!

require "test/unit"
require 'enumerator'

require "pascals_triangle"

class TestPascalsTriangle < Test::Unit::TestCase
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

    @rows = @output.each_line.map { |line| line.scan(/\d+/).map { |n| n.to_i  }  }
    @rows.each do |row|
          puts "[#{row}]"
        end

        @tri = PascalsTriangle.new
      end  

      def test_next_row
        @rows.each do |row|
          assert_equal(row, @tri.next_row)
        end
      end

      def test_each
        @tri.each(1) do |row|
          assert_equal(@rows.shift, row)
        end

         @tri.each(9) do |row|
           puts row
           @temp = @rows.shift
           puts "#{@temp}"  
            assert_equal(@temp, row)
          end
      end

      def test_find
        assert_equal(
              [1, 5, 10, 10, 5, 1 ], 
              @tri.find { |row| row.any? { |n| n > 9 }  })
      end
      
      def test_limit
        assert_equal(@rows, @tri.limit(10).to_a)
      end
        
    end