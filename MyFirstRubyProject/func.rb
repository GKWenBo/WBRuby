# frozen_string_literal: true

# 函数 (以及所有的块) 隐式地返回最后语句的值
def double(x)
  x * 2
end

puts double(2)
# 当不存在歧义的时候括号是可有可无的
puts double 3

puts double double 3

puts "#" * 30

def sum(x, y)
  x + y
end

puts sum 3, 4
puts sum sum(3, 5), 5

# yield
# 所有的方法都有一个隐式的，可选的块参数
# 可以用 'yield' 关键字调用
def surround
  puts "{"
  yield
  puts "}"
end

puts "#" * 30
surround { puts "hello world" }

# 可以向函数传递一个块
# "&"标记传递的块是一个引用
puts "#" * 30

def guests(&block)
  puts block.class
  block.call(4)
end

guests { |n| puts "You have #{n} guests" }

puts "#" * 30
# 可以传递多个参数，这些参数会转成一个数组，
# 这也是使用星号符 ("*") 的原因：
def guests1(*array)
  array.each { |guest| puts guest }
end

guests1(1, 2, 3)

# 解构
# 如果函数返回一个数组，在赋值时可以进行拆分：
puts "#" * 30

def foods
  ["pancake", "sandwich", "quesadilla"]
end

breakfast, lunch, dinner = foods
puts breakfast, lunch, dinner

# 有些情况下，你会想使用解构操作符 `*` 来解构数组
puts "#" * 30
ranked_competitors = ["John", "Sally", "Dingus", "Moe", "Marcy"]
def best(first, second, third)
  puts "Winners are #{first}, #{second}, #{third}"
end

best *ranked_competitors.first(3)

# 解构操作符也可放在参数里面
puts "#" * 30
def best1(first, second, third, *others)
  puts "Winners are #{first}, #{second}, and #{third}"
  puts "There were #{others.count} other participants"
end

best1 *ranked_competitors