# The program should:
#   Ask the user to input a year (Say 2016)
#   Determine if the given year is a leap year
#   If the given year is a leap year print, "2016 is a leap year!"
#   Otherwise print, "2015 is not a leap year."

# Hint:
#   To determine whether a year is a leap year, follow these steps:

#   1. If the year is divisible by 4, go to step 2. Otherwise, go to step 5.
#   2. If the year is divisible by 100, go to step 3. Otherwise, go to step 4.
#   3. If the year is divisible by 400, go to step 4. Otherwise, go to step 5.
#   4. The year is a leap year (it has 366 days).
#   5. The year is not a leap year (it has 365 days).

p "Enter a year:"
year = gets.chomp.to_i
div_by_4 = year%4 == 0
div_by_100 = year%100 == 0
div_by_400 = year%400 == 0

p div_by_100.to_s + " - div by 100"
p div_by_400.to_s + " - div by 400"
p div_by_4.to_s + " - div by 4"

if !div_by_4
  p "Year is not divisible by 4"
  leap_year = false
elsif div_by_4 && !
elsif !div_by_100 && !div_by_400
  p "year is not divisble by 100 and 400"
  leap_year = false
else 
  leap_year = true
end

p leap_year