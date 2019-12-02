class RocketEquation
  attr_reader :mass

  def self.calculate_fuel_for_file(filename)
    File.open(filename).readlines.sum do |mass|
      new(mass.to_i).calculate_fuel
    end
  end

  def initialize(mass)
    @mass = mass
  end

  def calculate_fuel
    (mass / 3) - 2
  end
end
