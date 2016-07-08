require('rspec')
require('pry')
require('word')

describe('Word') do
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
end
