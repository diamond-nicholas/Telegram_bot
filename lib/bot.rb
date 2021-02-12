
require 'telegram/bot'
require_relative '../token.rb'

class Nicholas
  def initialize
    Telegram::Bot::Client.run(TOKEN) do |bot|
      bot.listen do |message|
        case message.text
        when /start/i
         bot.api.send_message(chat_id: message.chat.id, text: "hey nich you figured it out")
        end
      end
    end
  end

end