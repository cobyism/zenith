require 'zenith'
require 'zenith/element'
require 'test/unit'

class ZenithTest < Test::Unit::TestCase

  def test_expands_single_tag
    assert_equal "<h1></h1>", Zenith.expand("h1")
  end

  def test_expands_tag_with_nested_child
    assert_equal "<h1><span></span></h1>", Zenith.expand("h1>span")
  end

  def test_element_parses_tag_names
    el = Zenith::Element.new('foo#someid.someclass')
    assert_equal "foo", el.tag
  end

  def test_element_parses_class_names
    el = Zenith::Element.new('foo#someid.someclass')
    assert_equal ["someclass"], el.classes
  end

  def test_element_parses_multiple_class_names
    el = Zenith::Element.new('foo#someid.someclass.classtwo')
    assert_equal ["someclass", "classtwo"], el.classes
  end

end
