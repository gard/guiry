require 'test_helper'

class GuiryTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Guiry::VERSION
  end

  def test_it_does_something_useful
    b = 'something'
    puts "##############"
    puts b.slice(2, 3)
    a = 4
    assert_equal a + 3, 6, 'addition did not work'
    assert false
  end
end
