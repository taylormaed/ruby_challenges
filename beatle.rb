class Beatle
  attr_accessor :name, :manager_name
  end



class Guitarist < Beatle
  def monica
    return "strum strum strum"
  end
end

class Bassist < Beatle
  def yeah
    return "yeah yeah yeah yeah"
  end
end

class Drummer < Beatle
  def thwack
  return "boom boom thwack"
  end
end

my_guitarist = Guitarist.new
my_guitarist.name="John"
guitarist_name = my_guitarist.name

my_bassist = Bassist.new
my_bassist.name="Paul"
bassist_name = my_bassist.name

my_drummer = Drummer.new
my_drummer.name="Ringo"
drummer_name = my_drummer.name

puts "#{guitarist_name} says #{my_guitarist.monica},
#{bassist_name} says #{my_bassist.yeah}, and
#{drummer_name} says #{my_drummer.thwack}!"

puts my_guitarist.inspect
puts my_bassist.inspect
puts my_drummer.inspect
