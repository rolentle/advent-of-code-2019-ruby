require 'spec_helper'
require './lib/rocket_equation'

describe RocketEquation do
  it 'returns a fuel amount of 2 when mass is 12' do
    expected_fuel_amount = 2

    mass = 12
    actual_fuel_amount = RocketEquation.new(mass).calculate_fuel

    expect(actual_fuel_amount).to eq (expected_fuel_amount)
  end

  it 'returns a fuel amount of 2 when mass is 14' do
    expected_fuel_amount = 2

    mass = 14
    actual_fuel_amount = RocketEquation.new(mass).calculate_fuel

    expect(actual_fuel_amount).to eq (expected_fuel_amount)
  end

  it 'returns a fuel amount of 654 when mass is 1969' do
    expected_fuel_amount = 654

    mass = 1969
    actual_fuel_amount = RocketEquation.new(mass).calculate_fuel

    expect(actual_fuel_amount).to eq (expected_fuel_amount)
  end

  it 'returns a fuel amount of 33583 when mass is 100756' do
    expected_fuel_amount = 33_583

    mass = 100756
    actual_fuel_amount = RocketEquation.new(mass).calculate_fuel

    expect(actual_fuel_amount).to eq (expected_fuel_amount)
  end
end
