require_relative '../model/elf'
# This is a calorie repository
class CalorieRepository
  def initialize(calorie_database)
    @calorie_database = calorie_database
    @calorie_repository = []
    @elf_repository = []
    load_database
    analyze_elf_calorie_data
  end

  def load_database
    database_in = File.open(@calorie_database)
    @calorie_repository = database_in.readlines.map(&:chomp)
  end

  def analyze_elf_calorie_data
    elf = Elf.new(calories: 0, id: 0)
    @calorie_repository.each do |data|
      if data == ""
        @elf_repository << elf
        elf = Elf.new(calories: 0, id: @elf_repository.count)
      else
        elf.calories += data.to_i
      end
    end
  end

  def all
    @calorie_repository
  end
  def elf_data
    @elf_repository
  end
end
