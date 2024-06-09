# frozen_string_literal: true

# 单行注释

=begin
多行注释
=end

puts "="*20
# 数字是对象
puts 3.class
puts 3.to_s

puts "="*20
# 字符串也是对象
puts "hello world".class

puts "="*20
# 方法也是对象
puts "hello".method(:class).class

puts "="*20
# 一些基本的算术操作
puts 1 + 1   #=> 2
puts 8 - 1   #=> 7
puts 10 * 2  #=> 20
puts 35 / 5  #=> 7
puts 2 ** 5  #=> 32
puts 5 % 3   #=> 2

puts "="*20
# 位运算符
puts 3 & 5 #=> 1
puts 3 | 5 #=> 7
puts 3 ^ 5 #=> 6

# 算术符号只是语法糖而已
# 实际上是调用对象的方法
puts "="*20
puts 1.+(3)
puts 10.*5
puts 100.methods.include?(:/)

# 特殊的值也是对象
puts "="*20
puts nil.class
puts true.class
puts false.class

# 字符串是对象
placeholder = "use string interpolation"
puts "I can #{placeholder} when using double quotes strings"

# 合并字符串，但不能和数字合并
puts "="*20
puts 'hello' + 'world'
# puts 'hello' + 3
puts 'hello' + 3.to_s
puts "hello #{3}"

# 打印输出，并在末尾加换行符
puts "="*20
puts "I'm printing!"

# 打印输出，不加换行符
puts "="*20
print "I'm printing!"

# 符号（Symbols，也是对象)
# 符号是不可变的，内部用整数值表示的可重用的常数
# 通常用它代替字符串来有效地表示有意义的值
puts "="*20
puts :pending.class

status = :pending
puts status == :pending
puts status == 'pending'

puts "="*20
# 按照惯例，所有返回布尔值的方法都以 ? 结尾
puts 5.even?
puts 5.odd?

# 如果方法名末尾有感叹号 !，表示会做一些破坏性的操作，比如修改调用者自身。
# 很多方法都会有一个 ! 的版本来进行修改，
# 和一个只返回更新结果的非 ! 版本
puts "="*20
company_name = "Dunder Mifflin"
puts company_name.upcase
puts company_name
# company_name.upcase!
# puts company_name