# frozen_string_literal: true

# 循环
for i in 1..5
  puts i
end

puts "#"*30
# 但是，没有人用 for 循环。
# 你应该使用 "each" 方法，然后再传给它一个块。
# 所谓块就是可以传给像 "each" 这样的方法的代码段。
# 它类似于其它语言中的 lambdas, 匿名函数或闭包。
#
# 区间上的 "each" 方法会对区间中的每个元素运行一次块代码。
# 我们将 counter 作为一个参数传给了块。
# 调用带有块的 "each" 方法看起来如下：
(1..5).each do |i|
  puts "iteration #{i}"
end

puts "#"*30
# 你也可以将块包含在一个大括号中
(1..5).each { |i| puts "{} iteration #{i}" }

# 数据结构中的内容也可以使用each来遍历
puts "#"*30
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each { |i| puts "array index: #{i}" }

hash_map = { name: "zhang san", age: 30 }
hash_map.each do |key, value|
  puts "#{key}: #{value}"
end