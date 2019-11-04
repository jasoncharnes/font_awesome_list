require "test_helper"
require "yaml"

class FontAwesomeListTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::FontAwesomeList::VERSION
  end

  def test_that_it_has_all_the_icons
    icon_file = File.read("#{__dir__}/../lib/font_awesome_list/icons.yml")
    icons = YAML.load(icon_file)

    assert_equal icons.count, FontAwesomeList::Icon.all.count
  end

  def test_that_it_just_returns_the_keys
    icon_file = File.read("#{__dir__}/../lib/font_awesome_list/icons.yml")
    icons = YAML.load(icon_file).keys

    assert_kind_of Array, FontAwesomeList::Icon.all
    assert_equal "500px", FontAwesomeList::Icon.all.first
  end
end
