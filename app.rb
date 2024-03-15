class GuessGame

  attr_accessor :guess1, :guess2, :number1, :number2, :guess_list

  def initialize

    #Has no parameters, but initialize 2 random numbers 
    #and and empty string accumulator for the guesses and uses the helper 
    #to kicktart the game.

    puts "Welcome to the guessing game. You have 10 guesses."
    puts

    self.number1 = rand(100)

    self.number2 = rand(100)

    self.guess_list = ""

    self.guess_numbers_helper

  end

  def guess_numbers_helper

    #helper method to make prompt the user for input

    puts "Guess a number:"
    self.guess1 = gets.chomp
    puts 

    puts "Guess another number:"
    self.guess2 = gets.chomp
    puts 

  end

  def guess_numbers

    #guess count accumulator
    guess_count = 0

    #runs while the guesses are under 10
    while guess_count < 10 
      
      #makes sure the user input is integers
      while self.guess1.to_i.to_s != self.guess1 or self.guess2.to_i.to_s != self.guess2

        puts "Please enter integers."
        puts

        self.guess_numbers_helper

      end
      
      #adds one after a round of 2 guesses
      guess_count += 1

      #adds the guesses to the guess_list accumulator separated by a comma
      self.guess_list = self.guess_list + self.guess1.to_s.strip + ", " + self.guess2.to_s.strip + ", "

      #if they guess either number they will win
      if self.guess1.to_i == number1 or self.guess1.to_i == number2 or self.guess2.to_i == number1 or self.guess2.to_i == number2

        puts 'DING DING DING, YOU WIN!' 

        return "It took you #{guess_count * 2} guesses."
        
      end

      #prints the amount of guesses the end user has left only if the guesses has not reached 10
      if guess_count < 10 and self.guess1.to_i != number1 and self.guess1.to_i != number2 and self.guess2.to_i != number1 and self.guess2.to_i != number2 

        puts "No try Again! you have #{10 - guess_count} guesses left"
        puts 

        self.guess_numbers_helper

      end

      #player receives a hint after half of their guesses are used
      if guess_count == 5

        puts "Hint: #{self.get_sum} #{self.get_difference}"
        puts

      end

    end
    
    #alerts the end user they have lost when they reach 10 guesses. It also show them all of their 
    #and what the numbers were. 
    if guess_count == 10

      #add and in between the last two numbers
      puts "You guessed: #{self.guess_list[0..self.guess_list.length.to_i - 6]} and #{self.guess_list.split(", ")[-1].to_s}. The numbers were actually #{number1.to_s} and #{number2.to_s}."

      return "You are out of guesses, therefore, lose."
      
    end

  end
 
  #method to calculate the sum of the two numbers
  def get_sum

    return "The sum of both numbers is #{number1.to_i + number2.to_i}."

  end

  #method to calculate the difference of the two numbers.
  def get_difference

    #make the smaller number is subtracted from the larger number
    if number1 > number2

      return "The difference of both numbers is #{number1.to_i - number2.to_i}"

    else

      return "The difference of both numbers is #{number2.to_i - number1.to_i}"

    end 

  end

end

game1 = GuessGame.new

#pp game1.guess_numbers
