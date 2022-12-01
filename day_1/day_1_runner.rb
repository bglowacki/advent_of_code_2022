require_relative "day_1"

input_path = File.expand_path('input.txt', __dir__)
input = File.read(input_path)
pp DesignateElfWithMostCalories.new.call(input).carried_calories
pp DesignateTopThreeElves.new.call(input).sum(&:carried_calories)

