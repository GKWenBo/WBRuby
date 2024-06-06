# 数组
ticket = [12, 47, 35]
puts ticket

puts '*'*20

# 数组可以包含不同类型的元素
puts [1, "hello", false] #=> [1, "hello", false]

# 数组可以被索引
# 从前面开始
puts '*'*20
puts ticket[0]
puts ticket.first
puts ticket.last

puts '*'*20
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# 从尾部开始
puts array[-1]
puts array.last

puts '*'*20
# 同时指定开始的位置和长度
puts array[2, 3]


puts '*'*20
# 或者指定一个区间
puts array[1..3]

puts '*'*20
# 数组逆序
puts array.reverse

puts '*'*20
# 往数组增加元素
array << 100
puts array
array.push(101)
puts array

# 检查元素是否包含在数组中
puts '*'*20
puts array.include?(1)