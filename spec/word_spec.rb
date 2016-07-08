require('rspec')
require('pry')
require('word')
require('definition')

describe('Word') do
  before() do
    Word.clear()
  end
  
  describe('#name') do
    it 'returns the name of the word' do
      test_word = Word.new('gallivant')
      expect(test_word.name()).to(eq('gallivant'))
    end
  end

  describe('#definition') do
    it 'initially returns an empty array' do
      test_word = Word.new('gallivant')
      expect(test_word.definition()).to(eq([]))
    end
  end

  describe('.all') do
    it 'initially returns an empty array' do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it 'pushes the current word into the words array' do
      test_word = Word.new('gallivant')
      expect(test_word.save()).to(eq([test_word]))
    end
  end

  describe('#id') do
    it 'returns the id of the word' do
      test_word = Word.new('gallivant')
      test_word.save()
      expect(test_word.id()).to(eq(1))
    end
  end

  describe('.find') do
    it 'returns a word by its id number' do
      test_word = Word.new('gallivant')
      test_word.save()
      test_word2 = Word.new('dropsy')
      test_word2.save()
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end
end
