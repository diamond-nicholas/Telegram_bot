
require 'telegram/bot'
require_relative '../token.rb'

class Nicholas
  def initialize
    Telegram::Bot::Client.run(TOKEN) do |bot|
      bot.listen do |message|
        case message.text
        when /start/i
         bot.api.send_message(chat_id: message.chat.id, text: "Hey #{message.from.first_name}, I'm a bot. I will make a list of websites to learn coding. try the /links command ")
        end
      end
    end
  end

end