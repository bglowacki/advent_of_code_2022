class Elf
  attr_reader :carried_calories

  def initialize
    @carried_calories = 0
  end

  def add_calories(calories)
    @carried_calories += calories
  end
end

class GetElvesFromList
  NEW_ELF_MARKER = ""
  def call(list)
    elves = []
    elf = Elf.new
    list.split("\n").each do |list_entry|
      if list_entry == NEW_ELF_MARKER
        elves << elf
        elf = Elf.new
      else
        elf.add_calories(list_entry.to_i)
      end
    end

    elves
  end
end

class DesignateElf
  def call(input)
    elves = GetElvesFromList.new.call(input)
    elves.max_by(&:carried_calories)
  end
end
