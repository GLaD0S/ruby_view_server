require 'erb'
require 'time'

=begin
this method will take in slices, number of times to record the current time and a block which will be what to do with the time.
=end
def time
	alltime = Array.new
	slices = 10
	i = 0
	while i < slices.to_i do
		alltime.push(Time.now)
		i+=1
	end
	yield
end
=begin
def print_time
	i = 0
	while i < all_time.length do
		puts all_time[i]
		i+=1
	end
end
=end
puts "How many slices of time would you like to record?"
slices = gets

#bockprint = { alltime.each do |e| print e end }

time { alltime.each do |e| print e end }


=begin
x = 42
template = ERB.new ("The value of x is: <%= x %>")
puts template.result(binding)
=end