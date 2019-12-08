class RocketEquation
  attr_reader :mass

  def self.calculate_fuel_for_file(filename)
    File.open(filename).readlines.sum do |mass|
      new(mass.to_i).calculate_fuel
    end
  end

  def self.calculate_net_fuel_for_file(filename)
    File.open(filename).readlines.sum do |mass|
      new(mass.to_i).calculate_net_fuel
    end
  end

  def initialize(mass)
    @mass = mass
  end

  def calculate_fuel
    @calculate_fuel ||= (mass / 3) - 2
  end

  def calculate_net_fuel
    if calculate_fuel >= 0
      calculate_fuel + self.class.new(calculate_fuel).calculate_net_fuel
    else
      0
    end
  end
end
