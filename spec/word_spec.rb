require('rspec')
require('word')

describe('#name') do
  it("returns the name of the word") do
    test_word = Word.new("apple")
    expect(test_word.name()).to(eq("apple"))
  end
end
