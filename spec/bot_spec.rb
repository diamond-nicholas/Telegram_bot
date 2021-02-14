require_relative '../lib/bot'
require_relative '../lib/links'

describe Links do
  describe 'web_link' do
    it 'returns an array' do
      expect(Links.new.web_link).to be_a Array
    end
  end

  describe 'start' do
    it 'return a string' do 
      expect(Links.new.start).to be_a String
    end
  end
end
