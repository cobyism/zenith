require 'zenith'
require 'test/unit'

class ZenithTest < Test::Unit::TestCase
  def test_expands_single_tag
    assert_equal "<h1></h1>", Zenith.expand("h1")
  end
end
