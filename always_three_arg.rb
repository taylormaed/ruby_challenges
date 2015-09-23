def always_three
  puts "Give me a number."
  number_1 = gets.to_i
  puts "Always #{(((((number_1 + 5) * 2) - 4) / 2) - number_1)}"
end
always_three


def always_three_arg(number_1)
  (((((number_1 + 5) * 2) - 4) / 2) - number_1)
end
puts "Give me a number."
final_number = gets.to_i
puts "Always #{(always_three_arg(final_number))}"
