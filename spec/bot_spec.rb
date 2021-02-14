require_relative '../lib/bot'

describe Klaus154 do
  describe '#initialize' do
    it 'returns a string of text of instructions when the start command is initiated' do
      expect(initialize.class).to eql(NilClass)
    end

    it 'returns a string of text of instructions when the start command is initiated' do
      expect(initialize.(/start/i)).to eql("Hey #{message.from.first_name}, I'm a bot.
 I will make a list of websites to learn coding. Try the /link command. For more links use the /more command ")
    end
  end
end
