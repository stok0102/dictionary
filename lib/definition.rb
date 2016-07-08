class Definition
  @@definitions = []

  attr_reader(:definition, :part_of_speech, :id)

  define_method(:initialize) do |info|
    @part_of_speech = info.fetch(:part_of_speech)
    @definition = []
    @id = @@definitions.length().+(1)
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
    @@definitions.each() do |definition|
      if definition.id().eql?(id)
        found_definition = definition
      end
    end
    found_definition
  end

  define_method(:add_definition) do |definition|
    @definition.push(definition)
  end
end
