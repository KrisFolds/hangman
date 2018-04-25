


  def secret_word()

    @remaining_guesses = 10

    @word = ["apple", "banana", "coconut", "diced", "extreme", "fruit", "grape", "honey",
"invent", "jalapeno", "kiwi", "lemon", "melon", "nectar", "opposite", "pear", "quiet",
"rhine", "stem", "taste"]
  @secret_word = @word.sample
  @secret_word_array = @secret_word.split('')
  puts @secret_word
  @correct_answers = "_" * @secret_word.length
  @correct_answers_array = @correct_answers.split('')
  return @secret_word_array
  end
  
 

  def game_over?()
   @remaining_guesses == 0
  end
 
  def play_game()
    @guessed_letters = []
    loop do 
       puts "pick a letter"
      @letter = gets.chomp
      @secret_word_array.each_with_index do |value, key|
      if @letter == value
          @correct_answers_array[key] = @letter
      end
      end
    
      if @secret_word_array.include?(@letter)
          puts "Good job! That letter is in the word."
      else
          @remaining_guesses -= 1
          puts "I'm sorry, that letter is not in the word. Please enter another letter."
          puts "You have #{@remaining_guesses} left. Don't give up now!"
          
      end

      @guessed_letters.push(@letter)
      puts "You have used the following letters: #{@guessed_letters}"

      p @correct_answers_array
      if game_over?()
          puts "Sorry, you have lost the game.  The word was #{@secret_word}"
          break
      elsif @correct_answers_array == @secret_word_array
          puts "You have won the game"
          break
      end
  end
end

