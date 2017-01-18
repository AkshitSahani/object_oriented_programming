class Cat
  attr_accessor :name, :preferred_food, :meal_time, :eats_at, :meow

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if 24>@meal_time && @meal_time>12
      return "#{(@meal_time - 12)} PM"
    elsif 12>@meal_time && @meal_time>0
      return "#{@meal_time} AM"
    elsif @meal_time == 0
      return "12 AM"
    else
      return "12 PM"
    end
  end

  def meow
    return "Hello, my name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end
end

mina = Cat.new("mina", "tuna", 2)

skylar = Cat.new("skylar", "salmon", 18)

puts mina.meow

puts skylar.meow
