require "test/unit"

require "pretty_printed_array"

class TestPrettyPrintedArray < Test::Unit::TestCase

  def test_field_size
    assert_equal(1, PrettyPrintedArray.new([[1],[1, 1], [1, 2, 1]]).field_size);
  end
end