# frozen_string_literal: true

require_relative "NasaFuelCalculation/version"

module NasaFuelCalculation
  class Error < StandardError; end

  def self.calculate_fuel(mass, gravity, action)
    coefficient = action == :launch ? 0.042 : 0.033
    offset = action == :launch ? 33 : 42
    fuel = ((mass * gravity * coefficient) - offset).floor
    fuel.positive? ? fuel : 0
  end

  def self.calculate_total_fuel(mass, gravity, action)
    total_fuel = 0
    fuel = calculate_fuel(mass, gravity, action)
    while fuel > 0
      total_fuel += fuel
      fuel = calculate_fuel(fuel, gravity, action)
    end
    total_fuel
  end

  def self.total_fuel_for_trip(initial_mass, route)
    route.reduce(0) do |acc, (action, gravity)|
      acc + calculate_total_fuel(initial_mass + acc, gravity, action)
    end
  end
end
