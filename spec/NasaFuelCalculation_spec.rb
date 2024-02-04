# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/NasaFuelCalculation'

RSpec.describe NasaFuelCalculation do
  describe ".total_fuel_for_trip" do
    it "calculates the correct total fuel for Apollo 11 mission" do
      mass = 28801
      route = [[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 9.807]]
      expect(NasaFuelCalculation.total_fuel_for_trip(mass, route)).to eq(51951)
    end

    it "calculates the correct total fuel for Mission on Mars" do
      mass = 14606
      route = [[:launch, 9.807], [:land, 3.711], [:launch, 3.711], [:land, 9.807]]
      expect(NasaFuelCalculation.total_fuel_for_trip(mass, route)).to eq(33482)
    end

    it "calculates the correct total fuel for Passenger ship mission" do
      mass = 75432
      route = [[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 3.711], [:launch, 3.711], [:land, 9.807]]
      expect(NasaFuelCalculation.total_fuel_for_trip(mass, route)).to eq(212283)
    end
  end
end
