require('rspec')
require('hangman')

describe(Hangman) do
  test_man = Hangman.new()
  it('randomly selects a word to guess') do
    expect(test_man.full_word()).to(eq("stock"))
  end
  it('creates an array of the letters') do
    expect(test_man.letters()).to(eq(['s', 't', 'o', 'c', 'k']))
  end
  it('creates one blank space for each letter') do
    expect(test_man.blanks()).to(eq("_ _ _ _ _"))
  end
  it('replaces underscore with guessed letter') do
    expect(test_man.guess('c')).to(eq("_ _ _ c _"))
  end
end
