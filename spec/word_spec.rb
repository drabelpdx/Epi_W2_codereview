require('rspec')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end


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

describe('.find') do
  it("returns a word by its id number") do
    test_word = Word.new("apple")
    test_word.save()
    test_word2 = Word.new("dog")
    test_word.save()
    expect(Word.find(test_word.id())).to(eq(test_word))
  end
end

describe('#add_definition') do
  it("adds a new definition to a word") do
    test_word = Word.new("apple")
    test_definition = Definition.new("a fruit")
    test_word.add_definition(test_definition)
    expect(test_word.oed()).to(eq([test_definition]))
  end
end
end
