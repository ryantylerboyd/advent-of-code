# SAVES THE LOCATION OF THE FILE TO A STRING
rps_database_file = File.join(__dir__, 'input.txt')
# LOADS IN DATA FROM THE FILE
database_in = File.open(rps_database_file)
# READS IN EACH LINE OF DATA
calorie_repository = database_in.readlines.map(&:chomp)
# MAPS EACH LINE BY SPLITTING THEM BY THE SPACE
calorie_repository.map! {|a| a.split(' ')}
# CALCULATES THE SCORE IF THEY WIN LOSE OR TIE
def score(opponent,person)
  return 3 if opponent == "A" && person == "X" || opponent == "B" && person == "Y" || opponent == "C" && person == "Z"
  return 6 if opponent == "B" && person == "Z" || opponent == "C" && person == "X" || opponent == "A" && person == "Y"
  return 0
end
# ADDS TO THE SCORE OF THE VALUE THEY PUT IN
def count(opponent,person)
  result = score(opponent,person)
  convert = 1 if person == "X"
  convert = 2 if person == "Y"
  convert = 3 if person == "Z"
  result += convert
end
print calorie_repository.map!{|a| count(a[0],a[1])}.sum
