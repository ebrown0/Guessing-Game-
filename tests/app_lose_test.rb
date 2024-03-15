##THE FIRST TWO PROMPTS FOR USER INPUT IS NOT COUNTED AS THE PROMPTS COMES
##FROM THE CLASS INITIALIZATION. THE TEST WILL RUN AFTER YOU ENTER SOMETHING FOR
##THOSE PROMPTS. ALSO COMMENT THE 'pp game1.guess_numbers' IN 'app.rb' TO 
#ENSURE THE TEST CODE RUNS PROPERLY

require './app'
require 'minitest/autorun'

class TestApp < Minitest::Test

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
