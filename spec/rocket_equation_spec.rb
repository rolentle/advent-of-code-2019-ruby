require 'spec_helper'
require './lib/rocket_equation'

describe RocketEquation do
  context '#calculate_fuel' do
    it 'returns a fuel amount of 2 when mass is 12' do
      expected_fuel_amount = 2

      mass = 12
      actual_fuel_amount = RocketEquation.new(mass).calculate_fuel

      expect(actual_fuel_amount).to eq(expected_fuel_amount)
    end

    it 'returns a fuel amount of 2 when mass is 14' do
      expected_fuel_amount = 2

      mass = 14
      actual_fuel_amount = RocketEquation.new(mass).calculate_fuel

      expect(actual_fuel_amount).to eq(expected_fuel_amount)
    end

    it 'returns a fuel amount of 654 when mass is 1969' do
      expected_fuel_amount = 654

      mass = 1969
      actual_fuel_amount = RocketEquation.new(mass).calculate_fuel

      expect(actual_fuel_amount).to eq(expected_fuel_amount)
    end

    it 'returns a fuel amount of 33583 when mass is 100756' do
      expected_fuel_amount = 33_583

      mass = 100756
      actual_fuel_amount = RocketEquation.new(mass).calculate_fuel

      expect(actual_fuel_amount).to eq(expected_fuel_amount)
    end

    it 'returns sum of all masses in file' do
      expected_fuel_amount = 34_241

      filename = './spec/fixtures/day_1_test.txt'
      actual_fuel_amount = RocketEquation.calculate_fuel_for_file(filename)

      expect(actual_fuel_amount).to eq(expected_fuel_amount)
    end
  end

  context '#calculate_net_fuel' do
    it 'returns 2 for when mass is 14' do
      expected_fuel_amount = 2

      mass = 12
      actual_fuel_amount = RocketEquation.new(mass).calculate_net_fuel

      expect(actual_fuel_amount).to eq(expected_fuel_amount)
    end

    it 'returns 966 for when mass is 1969' do
      expected_fuel_amount = 966

      mass = 1969
      actual_fuel_amount = RocketEquation.new(mass).calculate_net_fuel

      expect(actual_fuel_amount).to eq(expected_fuel_amount)
    end

    it 'returns a fuel amount of 50346 when mass is 100756' do
      expected_fuel_amount = 50_346

      mass = 100756
      actual_fuel_amount = RocketEquation.new(mass).calculate_net_fuel

      expect(actual_fuel_amount).to eq(expected_fuel_amount)
    end

    it 'returns sum of all masses in file' do
      expected_fuel_amount = 51_316

      filename = './spec/fixtures/day_1_test.txt'
      actual_fuel_amount = RocketEquation.calculate_net_fuel_for_file(filename)

      expect(actual_fuel_amount).to eq(expected_fuel_amount)
    end
  end
end
