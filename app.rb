class GusessGame

  
  attr_accessor :guess1, :guess2, :number1, :number2, :guess_list

  def initialize

    #Has no parameters, but initialize 2 random numbers 
    #and and empty string accumulator for the guesses

    self.number1 = rand(100)

    self.number2 = rand(100)

    self.guess_list = ""

  end

  def guess_numbers

    puts "Welcome to the guessing game. You have 10 guesses."
    puts

    #guess count accumulator
    guess_count = 0

    pp self.number1

    pp self.number2

    #runs while the guesses are under 10
    while guess_count < 10 

      #prompts the user to enter a number
      puts "Guess a number:"
      guess1 = gets
      puts 

      puts "Guess another number:"
      guess2 = gets
      puts 

      #adds one after a round of 2 guesses
      guess_count += 1

      #adds the guesses to the guess_list accumulator separated by a comma
      self.guess_list = self.guess_list + guess1.to_s.strip + ", " + guess2.to_s.strip + ", "

      #if they guess either number they will win
      if guess1.to_i == number1 or guess1.to_i == number2 or guess2.to_i == number1 or guess2.to_i == number2

        puts 'DING DING DING, YOU WIN!'
        return "It took you #{guess_count} tries."
        
      end

      #prints the amount of guesses the end user has left only if the guesses has not reached 10
      if guess_count < 10 and guess1.to_i != number1 and guess1.to_i != number2 and guess2.to_i != number1 and guess2.to_i != number2 

        puts "No try Again! you have #{10 - guess_count} guesses left"
        puts 

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

      puts "You guessed: #{self.guess_list[0..self.guess_list.length.to_i - 3]}. The numbers were actually #{number1.to_s} and #{number2.to_s}."
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

first = GusessGame.new

pp first.guess_numbers()
 
