class Definition
  @@definitions = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@definitions.length().+(1)
  end

  define_method(:name) do
    @name
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end

  define_singleton_method(:find) do |id|
    found_definition = nil
    @@definitions.each() do |entry|
      if entry.id().eql?(id)
        found_definition = entry
      end
    end
    found_definition
  end

end
