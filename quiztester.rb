#author: Jose Tobar
#Purpose: Make a program that can easily create quizes for user, using JSON.
#Version: 0.1
#Date: May 19, 2015

require 'json'

file = File.read('quiz.rb')
data_hash = JSON.parse(file)

(1..6).each do |key|
  #holds the value of the key as a string
  key_value = key.to_s

  puts data_hash[key_value]["question"]
  user_answer = gets.chomp

  if user_answer.eql? data_hash[key_value]["answer"].to_s #the value should be returned as a string
    puts "Correct!"
  else
    puts "Incorrect!"
  end

end
