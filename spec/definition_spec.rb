require('rspec')
require('pry')
require('definition')


describe('Definition') do
  before() do
    Definition.clear()
  end
  describe('#name') do
    it 'returns the name of the definition' do
      test_definition = Definition.new('go around from one place to another in the pursuit of pleasure or entertainment')
      expect(test_definition.name()).to(eq('go around from one place to another in the pursuit of pleasure or entertainment'))
    end
  end

  describe('#definition') do
    it 'initially returns an empty array' do
      test_definition = Definition.new('go around from one place to another in the pursuit of pleasure or entertainment')
      expect(test_definition.definition()).to(eq([]))
    end
  end

  describe('.all') do
    it 'initially returns an empty array' do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it 'pushes the current definition into the definitions array' do
      test_definition = Definition.new('go around from one place to another in the pursuit of pleasure or entertainment')
      expect(test_definition.save()).to(eq([test_definition]))
    end
  end

  describe('#id') do
    it 'returns the id of the definition' do
      test_definition = Definition.new('go around from one place to another in the pursuit of pleasure or entertainment')
      test_definition.save()
      expect(test_definition.id()).to(eq(1))
    end
  end

  describe('.find') do
    it 'returns a definition by its id number' do
      test_definition = Definition.new('go around from one place to another in the pursuit of pleasure or entertainment')
      test_definition.save()
      test_definition2 = Definition.new('old-fashioned or less technical term for edema.')
      test_definition2.save()
      expect(Definition.find(test_definition.id())).to(eq(test_definition))
    end
  end
end
