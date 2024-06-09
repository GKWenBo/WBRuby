# frozen_string_literal: true

# case
puts "#"*30
grade = "B"
case grade
when 'A'
  puts "Way to go kiddo"
when 'B'
  puts "Better luck next time"
when 'C'
  puts "You can do better"
when 'D'
  puts "Scraping through"
when 'F'
  puts "You failed!"
else
  puts "Alternative grading system, eh?"
end

# case也可以用区间
puts "#"*30
grade = 82
case grade
when 90..100
  puts "Hooray!"
when 80..90
  puts "OK job"
else
  puts "You failded"
end