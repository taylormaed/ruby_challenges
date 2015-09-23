

def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour

end


def anyone_i_meet
  puts "What's your name?"
  	name = gets.chomp
		return name
	end

def greeting
	current_hour = determine_current_hour
	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour == 3)
		time = "morning"
		(current_hour == 12)
		time = "morning"
	elsif(current_hour == 18)
		time = "evening"
	elsif(current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end

return time
end

name = anyone_i_meet
current_hour = determine_current_hour
time = greeting

	puts "Good #{greeting}, #{name.capitalize}!"
