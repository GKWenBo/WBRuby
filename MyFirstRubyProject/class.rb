# frozen_string_literal: true

# 类

# 用 class 关键字定义一个类
class Human
  @species = 'H. sapiens'

  def initialize(name, age = 0)
    # 将参数值赋给实例变量 "name"
    @name = name
    # 如果没有给出 age,那么会采用参数列表中的默认值
    @age = age
  end

  # 基本的 setter 方法
  def name=(name)
    @name = name
  end

  def age=(age)
    @age = age
  end

  # 基本地 getter 方法
  def name
    @name
  end

  # 以上的功能也可以用下面的 attr_accessor 来封装
  attr_accessor :name, :age

  attr_reader :name
  attr_writer :name

  def species
    @species
  end

  # 类方法通过使用 self 与实例方法区别开来。
  # 它只能通过类来调用，不能通过实例调用。
  def self.say(msg)
    puts "#{msg}"
  end

end

# 初始化一个类
jim = Human.new('Jim Halpert')
dwight = Human.new('Dwight Halpert')

puts jim.species
puts jim.name
jim.name = 'Jim Halpert II'
puts jim.name
puts dwight.species
puts dwight.name

# 调用类方法
puts Human.say('Hi')

# 基类
class Person
  @@foo = 0
  @bar = 0
  def self.foo
    @@foo
  end

  def self.foo=(foo)
    @@foo = foo
  end

  def self.bar=(value)
    @bar = value
  end
  def self.bar
    @bar
  end
end

# 派生类
class Student < Person

end

puts Person.foo
puts Student.foo

puts Person.foo = 2
puts Student.foo

puts "*"*30
# 类实例变量不能在继承类间共享
puts Person.bar
puts Student.bar