# {message.from.first_name}
class Links
  def web_link
    ['freecodecamp.org', 'udemy.com', 'codecademy.com', 'Educative.io', 'Pluralsight.com']
  end

  def start
    "Hey , I'm a bot. I will make a list of websites to learn coding. Try the /link command. For more links use the
    /more command"
  end

  def link
    "#{NAMES.web_link[0]}: This is one of the most awesome community websites which will help you to learn to code
     for free, build real-world projects and get a job as developer. It has a massive collection of interactive
     tutorials and exercises to learn JavaScript, Data Structure and Algorithms, Frontend Development and so on."
  end

  def more
    "#{NAMES.web_link[1]}: One of the best places for online learning. you will get online courses in all the latest
     technology and programming language like Java, Spring, Data Structure and Algorithms, Selenium, REST, etc. It
     provides both free and paid resources. #{NAMES.web_link[2]}: Interactive tutorials to learn some of the most
     popular technologies like JavaScript, Java, Linux for free. It also has some paid courses to learn advanced
     concepts in Python, Java, and JavaScript. #{NAMES.web_link[3]}: This is a great website to learn to program.
     Founded by Fahim ul Haq, the Educative highly interactive platform features some of the most popular
     technologies like JavaScript, JaKubernetes, Python and more. Whether you want to learn a new technology or
     you’re preparing for interviews, this is a good website to check out. #{NAMES.web_link[4]}: One of the best
     websites to learn any technology or ITcourses like programming language like Java, Web development framework
     like Spring Framework, Hibernate, etc."
  end
end
