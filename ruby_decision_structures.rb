#while loop
x = 0
while x < 21 do
  puts x
  x +=1
end

#until loop
x = 0
until x > 20 do
  puts x
  x +=1
end

#for loop
for x in 0..20
  puts x
end

#count down from 20
x = 20
while x > 0 do
  puts x
  x -=1
end

#Write a program which takes a number and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.

def check_num(number)
  if (1..10).include? number
    puts "Valid"
  else
    puts "Invalid"
  end
end

#Write a program that prints the numbers from 1 to 100. But for multiples of three print Fizz instead of the number and for the multiples of five print Buzz. For numbers which are multiples of both three and five print FizzBuzz
def fizz_buzz
  x=1
  until x > 100 do
    if x%3 == 0 && x%5 !=0
      puts "Fizz"
    elsif x%5==0 && x%3 !=0
      puts "Buzz"
    elsif x%3 ==0 && x%5==0
      puts "FizzBuzz"
    else
      puts x
    end
  x+=1
  end
end

#Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
def sum_nums(num1, num2)
  puts num1 + num2
end

#Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
def is_even(num)
  if num%2 ==0
    puts true
  else
    puts false
  end
end

#Create an array of words. Iterate through the array using .each and a block, then print each of those words in all capitals.
words= ["hello", "goodbye", "bonjour", "hola"]
words.map(&:upcase)

#Write a method which calls another method, then uses its return value
def gen_num
  rand(1..100)
end

def message
  puts "The random number is #{gen_num}"
end

#Write a function called valid_date that prompts the user for a date with a month, date, and year (all numerically expressed) and returns 'true' if this date exists and 'false' if it does not (for example: 7 28 2014 exists, but 22 34 1999 does not). Make sure to account for leap years. This program is easiest if you prompt for the month, date, and year separately.
def valid_date(month, date, year)
  if date > 31
    false
  elsif month > 12
    false
  elsif month==4 || month==6 || month==9 || month==11 && date >30
    false
  elsif month==2 && date >28
    false
  elsif year %4 ==0 && month ==2 && date >29
    false
  else
    true
  end
end

#Using if, elsif, and else blocks, write a function called rps_game which allows two users to input their moves in "Rock, Paper, Scissors" and which determines the winner (or if a tie occurred).

def rps_game
  puts "Player 1 enter rock, paper, or scissors: "
  player1 = gets.chomp
  puts "Player 2 enter rock, paper, or scissors: "
  player2 = gets.chomp
  if player1 != "rock" || player1 != "paper" || player1 != "scissors"
    puts "Player 1 MUST enter rock, paper, or scissors! "
  elsif player2 != "rock" || player2 != "paper" || player2 != "scissors"
    puts "Player 2 MUST enter rock, paper, or scissors! "
  elsif player1 == "rock" && player2 == "paper"
    puts "Player 2 wins"
  elsif player1 == "rock" && player2 == "scissors"
    puts "Player 1 wins"
  elsif player2 == "rock" && player1 == "paper"
    puts "Player 1 wins"
  elsif player2 == "rock" && player1 == "scissors"
    puts "Player 2 wins"
  elsif player1 == "paper" && player2 == "scissors"
    puts "Player 2 wins"
  elsif player1 == "paper" && player2 == "rock"
    puts "Player 2 wins"
  else
    puts "Its a tie!"
  end
end
