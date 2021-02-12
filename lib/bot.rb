require 'telegram/bot'
require_relative '../token'

class Nicholas
  def initialize
    Telegram::Bot::Client.run(TOKEN) do |bot|
      bot.listen do |message|
        case message.text
        when /start/i
          bot.api.send_message(chat_id: message.chat.id,
                               text: "Hey #{message.from.first_name}, I'm a bot. I will make a list of websites to learn coding. Try the /link command. For more links use the /more command ")
        when /link/i
          bot.api.send_message(chat_id: message.chat.id,
                               text: 'freecodecamp.org: This is one of the most awesome community websites which will help you to learn to code for free, build real-world projects and get a job as developer. It has a massive collection of interactive tutorials and exercises to learn JavaScript, Data Structure and Algorithms, Frontend Development and so on.')
        when /more/i
          bot.api.send_message(chat_id: message.chat.id,
                               text: 'udemy.com: One of the best places for online learning. you will get online courses in all the latest technology and programming language like Java, Spring, Data Structure and Algorithms, Selenium, REST, etc. It provides both free and paid resources. codecademy.com: Interactive tutorials to learn some of the most popular technologies like JavaScript, Java, Linux for free. It also has some paid courses to learn advanced concepts in Python, Java, and JavaScript. Educative.io: This is a great website to learn to program. Founded by Fahim ul Haq, the Educative highly interactive platform features some of the most popular technologies like JavaScript, JaKubernetes, Python and more. Whether you want to learn a new technology or you’re preparing for interviews, this is a good website to check out. Pluralsight.com: One of the best websites to learn any technology or IT courses like programming language like Java, Web development framework like Spring Framework, Hibernate, etc.')
        else
          bot.api.send_message(chat_id: message.chat.id,
                               text: " i do not understand #{message.text}. I can only understand 'start', 'link', and 'more' commands.")
        end
      end
    end
  end
end
