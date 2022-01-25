require 'mechanize'
require 'paint'
require 'dotenv'
Dotenv.load

def login
  agent = Mechanize.new
  login_page = agent.get("https://atcoder.jp/login")

  form = login_page.forms[1]
  button = form.buttons
  form["username"] = ENV["ID"]
  form["password"] = ENV["PASS"]

  form.submit()
  agent
end

file = File.open("main.rb","r")
url = file.read.split("\r")[0].split(" ")[1]

samples={input: [], output: []}
agent = login()
page = agent.get(url)
table = page.xpath('//div[@class="part"]/section')
table.each_with_index do |t,i|
  if t.css('h3').text.include? "入力例"
    samples[:input] << t.css('pre').text
  end
  if t.css('h3').text.include? "出力例"
    samples[:output] << t.css('pre').text
  end
end

n = samples[:input].size
i=0
while i<n
  inputs = samples[:input][i].split("\r\n")
  outputs = samples[:output][i]
  io = IO.popen("ruby main.rb", "w+")
  inputs.each do |input|
    io.puts("#{input}\\n")
  end
  io.close_write
  result = io.readlines.join
  if result == outputs.gsub("\r\n","\n")
    puts Paint['success :)', :green]
  else
    puts Paint['failure :(', :red]
    puts "output: #{outputs.gsub("\r\n"," ")}"
    puts "answer: #{result.gsub("\n"," ")}"
  end
  i+=1
end
