require('rspec')
require('definition')

describe('#name') do
  it("returns the text of the definition") do
    test_definition = Definition.new("a fruit")
    expect(test_definition.name()).to(eq("a fruit"))
  end
end
