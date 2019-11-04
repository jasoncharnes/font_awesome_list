require "test_helper"
require "yaml"

class FontAwesomeListTest < Minitest::Test
  def setup
    icon_file = File.read("#{__dir__}/../lib/font_awesome_list/icons.yml")
    @icons = YAML.load(icon_file)
  end

  def test_that_it_has_a_version_number
    refute_nil ::FontAwesomeList::VERSION
  end

  def test_that_it_has_all_the_icons
    assert_equal @icons.count, FontAwesomeList::Icon.all.count
  end

  def test_that_it_has_all_the_icons
    assert_equal @icons.count, FontAwesomeList::Icon.all.count
  end

  def test_that_it_can_return_the_names_with_the_styles
    assert_kind_of Array, FontAwesomeList::Icon.all
    assert_equal FontAwesomeList::Icon.all.first, {name: "500px", styles: [:brands]}
  end

  def test_that_it_can_return_the_names
    assert_kind_of Array, FontAwesomeList::Icon.names
    assert_equal "500px", FontAwesomeList::Icon.names.first
  end
end
