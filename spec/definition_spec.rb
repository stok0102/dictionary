require('rspec')
require('pry')
require('definition')


describe('Definition') do
  before() do
    Definition.clear()
  end
  describe('#part_of_speech') do
    it 'returns the part of speech of the definition' do
      test_definition = Definition.new({:definition=> 'go around from one place to another in the pursuit of pleasure or entertainment', :part_of_speech=> 'verb'})
      expect(test_definition.part_of_speech()).to(eq('verb'))
    end
  end

  describe('#definition') do
    it 'returns definition property of definition object' do
      test_definition = Definition.new({:definition=> 'go around from one place to another in the pursuit of pleasure or entertainment', :part_of_speech=> 'verb'})
      expect(test_definition.definition()).to(eq('go around from one place to another in the pursuit of pleasure or entertainment'))
    end
  end

  describe('.all') do
    it 'initially returns an empty array' do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it 'pushes the current definition into the definitions array' do
      test_definition = Definition.new({:definition=> 'go around from one place to another in the pursuit of pleasure or entertainment', :part_of_speech=> 'verb'})
      expect(test_definition.save()).to(eq([test_definition]))
    end
  end

  describe('#id') do
    it 'returns the id of the definition' do
      test_definition = Definition.new({:definition=> 'go around from one place to another in the pursuit of pleasure or entertainment', :part_of_speech=> 'verb'})
      test_definition.save()
      expect(test_definition.id()).to(eq(1))
    end
  end

  describe('.find') do
    it 'returns a definition by its id number' do
      test_definition = Definition.new({:definition=> 'go around from one place to another in the pursuit of pleasure or entertainment', :part_of_speech=> 'verb'})
      test_definition.save()
      test_definition2 = Definition.new(:definition=> 'old-fashioned or less technical term for edema', :part_of_speech=> 'noun')
      test_definition2.save()
      expect(Definition.find(test_definition.id())).to(eq(test_definition))
    end
  end
end
