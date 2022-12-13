require_relative 'repository/calorie_repository.rb'
calorie_database_file = File.join(__dir__, 'data/input.txt')
calorie_repository = CalorieRepository.new(calorie_database_file)
elf_data_out = calorie_repository.elf_data.sort_by{|data| data.calories}
puts elf_data_out.last.calories
# calorie_repository.elf_data.each do |data|
#   puts data.calories
# end
