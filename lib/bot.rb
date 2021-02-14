require 'telegram/bot'
require_relative '../token'
require_relative './links'

NAMES = Links.new
class Klaus154
  def initialize
    Telegram::Bot::Client.run(TOKEN) do |bot|
      bot.listen do |message|
        case message.text
        when /start/i
          bot.api.send_message(chat_id: message.chat.id, text: NAMES.start.to_s)
        when /link/i
          bot.api.send_message(chat_id: message.chat.id, text: NAMES.link.to_s)
        when /more/i
          bot.api.send_message(chat_id: message.chat.id, text: NAMES.more.to_s)
        else
          bot.api.send_message(chat_id: message.chat.id, text: " i do not understand #{message.text}. I can
          only understand 'start', 'link', and 'more' commands.")
        end
      end
    end
  end
end
