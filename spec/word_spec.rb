require 'rspec'
require 'word'

describe '#Word' do
  describe('.all') do
    it("returns an empty array when there are no words") do
      expect(Word.all).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a word") do
      word = Word.new("hello", nil)
      word.save()
      word2 = Album.new("bye", nil)
      word2.save()
      expect(Word.all).to(eq([word, word2]))
    end
  end
end
