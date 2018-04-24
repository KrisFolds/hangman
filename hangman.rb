
Hangman = Hangman.new
class Hangman_game
	attr_reader :remaining_guesses, :answer
	def initialize
		@answer = secret_word
		@remaining_guesses = 10
		@guessed_letters = []
	end

  def secret_word()
    dictionary = ["apple", "banana", "coconut", "diced", "extreme", "fruit", "grape", "honey",
"invent", "jalapeno", "kiwi", "lemon", "melon", "nectar", "opposite", "pear", "quiet",
"rhine", "stem", "taste"]
  @secret_word = dictionary.sample
  @secret_word_array = @secret_word.split('')
  puts @secret_word
  @correct_guess = "_" * @secret_word.length
  @correct_guess_array = @correct_guess.split('')
  end
  
  secret_word()

  def guessed_letters(letter)
    	if @answer.include?(letter)
        puts "Good job."
        @guessed_letters.push(letter)
        puts @guessed_letters
      else
        puts "Sorry that is incorrect."
        @guessed_letters.push(letter)
        @remaining_guesses -= 1
        puts "You've used the following letters: #{@guessed_letters}."
      end
    end
  
    def won?
    @answer.all? do |g|
      @guessed_letters.include?(g)
      puts "Congratulations, you have won the game!"
    end
  end

  def game_over?
    @guesses_left == 0 || won?
    puts "I'm sorry but you have used up all of your chances."
  end

end


 