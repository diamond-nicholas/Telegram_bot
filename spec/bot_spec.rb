require_relative '../lib/bot'
require_relative '../lib/links'
describe Klaus154 do
  subject { Klaus154 }

  describe '#initialize' do
    #     expect_any_instance_of(Klaus154).to receive(String).with("Hey #{message.from.first_name}, I'm a bot.
    #  I will make a list of websites to learn coding. Try the /link command. For more links use the /more command ")
    #      Klaus154.new('/start/i').initialize

    it 'returns a Nilclass' do
      expect(initialize.class).to eql(NilClass)
    end

    it 'returns a string of text of instructions when the start command is initiated' do
      sentence = "Hey nich, I'm a bot.
 I will make a list of websites to learn coding. Try the /link command. For more links use the /more command "
      expect(initialize.call(/start/i)).to eql(sentence)
    end
  end
end

describe Links do
  describe 'web_link' do
    it 'returns an array' do
      expect(Links.new.web_link).to be_a Array
    end
  end
end
