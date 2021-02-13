require_relative '../lib/bot.rb'

bot = Klaus_bot.new

describe Klaus_bot do 
  describe '#initialize' do
    it 'returns a string of text of instructions when the start command is initiated' do
      expect(initialize.class).to eql(String)
    end
  end
end