class GusessGame

  attr_accessor :guess1, :guess2, :number1, :number2, :guess_list

  def initialize

    self.number1 = rand(100)

    self.number2 = rand(100)

    self.guess_list = []

  end

  def guess_numbers

    puts "Welcome to the guessing game. You have 10 guesses."
    puts

    guess_count = 0

    pp self.number1

    pp self.number2

    while guess_count < 10 

      puts "Guess a number:"
      guess1 = gets
      puts 

      puts "Guess another number:"
      guess2 = gets
      puts 

      self.guess_list.append(guess1)
      self.guess_list.append(guess2)

      if guess1.to_i == number1 or guess1.to_i == number2 or guess2.to_i == number1 or guess2.to_i == number2

        return 'DING DING DING, YOU WIN!'
        break

      end

      guess_count += 1

      if guess_count < 10 and guess1.to_i != number1 and guess1.to_i != number2 and guess2.to_i != number1 and guess2.to_i != number2 

        puts "No try Again! you have #{10 - guess_count} guesses left"
        puts 

      end

      if guess_count == 5

        puts "Hint: #{self.get_sum} #{self.get_difference}"

      end

    end
    
    self.guess_list.append(guess1.to_i)
    self.guess_list.append(guess2.to_i)

    if guess_count == 10

      puts "Sorry you out of guesses, therefore, lose."

    end

  end

  def get_sum

    return "The sum of both numbers is #{number1.to_i + number2.to_i}."

  end

  def get_difference

    if number1 > number2

      return "The difference of both numbers is #{number1.to_i - number2.to_i}"

    else

      return "The difference of both numbers is #{number2.to_i - number1.to_i}"

    end 

  end

end

first = GusessGame.new

pp first.guess_numbers()
pp first.guess_list()
