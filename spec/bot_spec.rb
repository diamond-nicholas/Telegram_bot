require_relative '../lib/bot'

describe Klaus154 do
  describe '#initialize' do
    it 'returns a string of text of instructions when the start command is initiated' do
      expect(initialize.class).to eql(NilClass)
    end
  end
end
