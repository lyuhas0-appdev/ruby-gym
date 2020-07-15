# Suppose that your program has to deal with the object inside the variable 'some_random_input', starting on Line 24. If the object is:

# a String: downcase it and print it
# a Time: figure out the day of the week, downcased, and print
# an Integer: figure out whether it's odd or even and print
# a Symbol: downcase it and print it
# nil: print "no object provided"
# true: print "you may pass"
# false: print "you may not pass"
# a Hash: print the list of keys within the Hash, as an Array.

# if statements are one of our most commonly used tools we use as developers for dealing with the unknown!
#   Pull up the chapter if you need a refresher https://chapters.firstdraft.com/chapters/763

# Next, remember that there's a method called `.class` that we can call on any Ruby object
#   to find out what kind of thing it is. We first met it way back in the Integer Chapter,
#   and we used it a lot especially when exploring an API response, which could come back to us in different shapes and sizes.

unpredictable_inputs = [
  "Hello!",
  Time.now,
  rand(100),
  :GOODBYE,
  nil,
  true,
  false,
  { :city => "Chicago", :state => "IL", :zip => 60654 }
]

some_random_input = unpredictable_inputs.sample

p some_random_input
p some_random_input.class

days_of_the_week = { 0 => "sunday", 1 => "monday", 2 => "tuesday", 3 => "wednesday", 4 => "thursday", 5 => "friday", 6 => "saturday"}

input_class = some_random_input.class 
  
if input_class == String
  p some_random_input.to_s.downcase
elsif input_class == Time
  p days_of_the_week[some_random_input.wday]
elsif input_class == Integer
  if some_random_input.odd?
    p some_random_input.to_s + " is odd"
  elsif
    p some_random_input.to_s + " is even"
  end
elsif input_class == TrueClass
  p "you may pass"
elsif input_class == FalseClass
  p "you may not pass"
elsif input_class == Hash
  p some_random_input.keys
elsif input_class == NilClass
  p "no object provided"
elsif input_class == Symbol
  p ":" + some_random_input.to_s.downcase
end

