require 'pry'
class Robot
  @@robot_names = []
  @@robot_macs = []

  attr_accessor :name, :mac
  def initialize
    loop do
    @mac = (1..6).map{"%0.2X"%rand(256)}.join(":")
    @name = ('A'..'Z').to_a.shuffle[0,2].join + ('000'..'999').to_a.sample
    break if (!@@robot_names.include?(@name) && !@@robot_macs.include?(@mac))
    end
  end

  def reset
    loop do
    @name = ('A'..'Z').to_a.shuffle[0,2].join + ('000'..'999').to_a.sample
    break if (!@@robot_names.include?(@name))
    end
    return "Resetting to Factory Settings"
  end
end
binding.pry
