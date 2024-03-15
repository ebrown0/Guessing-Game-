##THE FIRST TWO PROMPTS FOR USER INPUT IS NOT COUNTED AS THE PROMPTS COMES
##FROM THE CLASS INITIALIZATION. THE TEST WILL RUN AFTER YOU ENTER SOMETHING FOR
##THOSE PROMPTS. ALSO COMMENT THE 'pp game1.guess_numbers' IN 'app.rb' TO 
#ENSURE THE TEST CODE RUNS PROPERLY

require './app'
require 'minitest/autorun'

class TestApp < Minitest::Test
  
  #Testing if the winning condition works for the first go round of guesses. Both of the numbers is 
  #set to 0, so enter 0 as one of first two numbers when the test starts running.
  def test_win

    game = GuessGame.new 

    #Here, both numbers to be guessed is set to 0
    game.number1 = 0
    game.number2 = 0

    #pass indicates that you win using your first two guesses
    assert_equal "It took you 2 guesses.", game.guess_numbers

  end

  #The next test to run is the integer checker. Purposely get the guesses wrong in the first 
  #round of two guesses. When you are prompted that you have 9 guesses left, enter 0 as 
  #one of your guesses
  def test_only_integer

    game = GuessGame.new

    game.number1 = 0
    game.number2 = 0

    #pass indicates that the round of guesses that you used at least one non integer
    #is not counted
    assert_equal "It took you 4 guesses.", game.guess_numbers

  end

  #Last is the lose test. Just continuously enter the wrong number (and/or non intergers)
  #until you are out of guesses and reach the end. 
  def test_lose

    game = GuessGame.new

    game.number1 = 0
    game.number2 = 0

    #pass indicates that you have reached the end of the program
    assert_equal "You are out of guesses, therefore, lose.", game.guess_numbers

  end

end
