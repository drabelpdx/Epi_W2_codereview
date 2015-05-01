require('rspec')
require('word')

describe('#name') do
  it("returns the name of the word") do
    test_word = Word.new("apple")
    expect(test_word.name()).to(eq("apple"))
  end
end

describe('#save') do
  it("adds a word to the array of saved words") do
    test_word = Word.new("apple")
    test_word.save()
    expect(Word.all()).to(eq([test_word]))
  end
end

describe('.clear') do
  it("empties out all the saved words") do
    Word.new("apple").save()
    Word.clear()
    expect(Word.all()).to(eq([]))
  end
end
