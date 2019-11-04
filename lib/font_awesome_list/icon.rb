require "yaml"

module FontAwesomeList
  class Icon
    def self.all
      icons.map { |k,v| { name: k, styles: v["styles"].map(&:to_sym) } }
    end

    def self.icons
      YAML.load File.read("#{__dir__}/icons.yml")
    end

    def self.names
      icons.keys
    end
  end
end
