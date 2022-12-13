class Elf
  attr_accessor :id, :calories
  def initialize(args={})
    @calories = args[:calories]
    @id = args[:id]
  end
  def calories
    @calories
  end
end
