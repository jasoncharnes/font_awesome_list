require "yaml"

module FontAwesomeList
  class Icon
    ICON_FILE = "#{__dir__}/icons.yml".freeze

    def self.all
      icons = File.read(ICON_FILE)
      YAML.load(icons).keys
    end
  end
end
