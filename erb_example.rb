require 'erb'
puts "How many slices of time would you like to record?"
gets slices
=begin
this method will take in slices, number of times to record the current time and a block which will be what to do with the time.
=end
def time (slices) 
	all_time
	i = 0
	while i < slices
		all_time.push(Time.now)
		i++
	end
	yield
end

def print_time
	i = 0
	while i < all_time.length
		puts all_time[i]
	end
end

time(slices)



x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)