require('rspec')
require('pry')
require('word')

describe('Word') do
  describe('#name') do
    it 'returns the name of the name' do
      test_word = Word.new('gallivant')
      expect(test_word.name()).to(eq('gallivant'))
    end
  end
end
