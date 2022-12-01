require "minitest/autorun"
require_relative "day_1"

class Day1Test < Minitest::Test
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

    elf = DesignateElf.new.call(test_input)

    assert_equal( 24000, elf.carried_calories)
  end
end

