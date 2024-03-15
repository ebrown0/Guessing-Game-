##THE FIRST TWO PROMPTS FOR USER INPUT IS NOT COUNTED AS THE PROMPTS COMES
##FROM THE CLASS INITIALIZATION. THE TEST WILL RUN AFTER YOU ENTER SOMETHING FOR
##THOSE PROMPTS. ALSO COMMENT THE 'pp game1.guess_numbers' IN 'app.rb' TO 
#ENSURE THE TEST CODE RUNS PROPERLY

require './app'
require 'minitest/autorun'

class TestApp < Minitest::Test
  
  #Testing if the winning condition works for the third go round of guesses. Both of the numbers is 
  #set to 0, so enter 0 as one of 5th or 6th guesses.
  def test_win

    game = GuessGame.new 

    #Here, both numbers to be guessed is set to 0
    game.number1 = 0
    game.number2 = 0

    #pass indicates that you win on your third round of two guesses
    assert_equal "It took you 6 guesses.", game.guess_numbers

  end

  #The next test to run is the integer checker. Enter a non-interger value for the first few rounds of guesses.
  #After you are done with however many, enter 0 as one of your first real number guesses.
  def test_only_integer

    game = GuessGame.new

    game.number1 = 0
    game.number2 = 0

    #pass indicates that the round of guesses that you used at least one non integer
    #is not counted
    assert_equal "It took you 2 guesses.", game.guess_numbers

  end

end
