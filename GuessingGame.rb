class GusessGame
  attr_accessor :guess1
  attr_accessor :guess2
  attr_accessor :number1
  attr_accessor :number2



  def guess_numbers
    puts "Welcome to the guessing game. You have 10 guesses."
    puts

    number1 = rand(100)
    number2 = rand(100)

    guess_count = 0

    pp number1
    pp number2

    while guess_count < 10

      puts "Guess a number:"
      guess1 = gets
      puts 

      puts "Guess another number:"
      guess2 = gets
      puts 


      if guess1.to_i == number1 or guess1.to_i == number2 or guess2.to_i == number1 or guess2.to_i == number2

        return 'DING DING DING, YOU WIN!'
        break

      end

      guess_count += 1

      if guess1.to_i != number1 and guess1.to_i != number2 and guess2.to_i != number1 and guess2.to_i != number2

        puts "No try Again! you have #{10 - guess_count} guesses left"
        puts 

      end

      
    end
    
    if guess_count == 0

      puts "Sorry you out of guesses, therefore, lose. "

    end

  end

  def get_sum

    pp number1

    pp number1.to_i + number2.to_i

  end

  def get_difference

    if number1 > number2

      return number1.to_i - number2.to_i

    else

      return number2.to_i - number1.to_i

    end 

  end

end

first = GusessGame.new

pp first.guess_numbers()

