require('rspec')
require('definition')

describe('#name') do
  it("returns the text of the definition") do
    test_definition = Definition.new("a fruit")
    expect(test_definition.name()).to(eq("a fruit"))
  end
end

describe('#save') do
  it("adds a definition to the array of saved definitions") do
    test_definition = Definition.new("a fruit")
    test_definition.save()
    expect(Definition.all()).to(eq([test_definition]))
  end
end

describe('.clear') do
  it("empties out all the saved definitions") do
    Definition.new("a fruit").save
    Definition.clear()
    expect(Definition.all()).to(eq([]))
  end
end
