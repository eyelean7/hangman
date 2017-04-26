class Hangman
  define_method(:initialize) do
    @full_word = ["stock"].sample
    @letters = @full_word.split("")
    @blanks = @letters.join(" ").gsub(/[a-zA-Z]/,'_')
    guesses = []
    complete = false
    # full_word = w%[stock apparent property fancy straight weird rainbow].sample
  end
  define_method(:full_word) do
    @full_word
  end
  define_method(:letters) do
    @letters
  end
  define_method(:blanks) do
    @blanks
  end
  define_method(:guess) do |letter|

    if @letters.include?(letter)
      blank_array = @blanks.split()
      blank_array[@letters.index(letter)]=letter
    end
    blank_array.join(" ")
  end
end
    # letters = full_word.split("")
    #
    # letters.length()
    # if full_word includes?
  # end
  # letters.join("")
