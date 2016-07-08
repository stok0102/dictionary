class Word
  @@words = []

  attr_reader(:name, :definition)

  define_method(:initialize) do |name|
    @name = name
    @definition = []
  end
end
