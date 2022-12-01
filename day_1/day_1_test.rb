require "minitest/autorun"
require_relative "day_1"

class DesignateElfWithMostCaloriesTest < Minitest::Test
  def test_1
    test_input = <<~TXT
      1000
      2000
      3000

      4000

      5000
      6000

      7000
      8000
      9000

      10000
    TXT

    elf = DesignateElfWithMostCalories.new.call(test_input)

    assert_equal( 24000, elf.carried_calories)
  end
end
class DesignateTopThreeElvesTest < Minitest::Test
  def test_1
    test_input = <<~TXT
      1000
      2000
      3000

      4000

      5000
      6000

      7000
      8000
      9000

      10000
    TXT

    elves = DesignateTopThreeElves.new.call(test_input)

    assert_equal( 41000, elves.sum(&:carried_calories))
  end
end

