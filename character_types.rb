# Write a program that:
#   Asks the user to enter a sentence
#   Counts the total number of letters in the given sentence
#   Counts the total number of spaces in the given sentence
#   Counts the total numbers of digits in the given sentence
#   and prints the intormation out

# Example:

#  "Enter a sentence:"
#  here 12 plus 25
#  "Number of letters in the string is: 8"
#  "Number of spaces in the string is: 3"
#  "Number of digits in the string is: 4"

p "Enter a sentence:"
sentence = gets.chomp
char_array = sentence.split("")
number_letters = 0
number_spaces = 0
number_digits = 0

char_array.each do |char|
  if char == " "
    number_spaces = number_spaces + 1
  elsif "1234567890".include?char
    number_digits = number_digits + 1
  else
    number_letters = number_letters + 1  
  end
end

p "Number of letters in the string is: " + number_letters.to_s 
p "Number of spaces in the string is: " + number_spaces.to_s 
p "Number of digits in the string is: " + number_digits.to_s 