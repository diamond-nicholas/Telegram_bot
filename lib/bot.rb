
require 'telegram/bot'
require_relative '../token.rb'

class Nicholas
  def initialize
    Telegram::Bot::Client.run(TOKEN) do |bot|
      bot.listen do |message|
        case message.text
        when /start/i
         bot.api.send_message(chat_id: message.chat.id, text: "Hey #{message.from.first_name}, I'm a bot. I will make a list of websites to learn coding. try the /link command. For more links use the /more command ")
        when /link/i
         bot.api.send_message(chat_id: message.chat.id, text: "freecodecamp.org: This is one of the most awesome community websites which will help you to learn to code for free, build real-world projects and get a job as a developer. It has a massive collection of interactive tutorials and exercises to learn JavaScript, Data Structure and Algorithms, Frontend Development and so on.")
        when /more/i
         bot.api.send_message(chat_id: message.chat.id, text: "udemy.com: One of the best places for online learning. you will get online courses in all the latest technology and programming language like Java, Spring, Data Structure and Algorithms, Selenium, REST, etc. It provides both free and paid resources. codecademy.com: Interactive tutorials to learn some of the most popular technologies like JavaScript, Java, Linux for free. It also has some paid courses to learn advanced concepts in Python, Java, and JavaScript.")
        end
      end
    end
  end

end