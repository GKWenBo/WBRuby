# frozen_string_literal: true

module ModuleExample
  def foo
    'foo'
  end
end

# '包含'模块后，模块的方法会绑定为类的实例方法
# '扩展'模块后，模块的方法会绑定为类方法
class Person
  include ModuleExample

end

class Book
  extend ModuleExample

end

# puts Person.foo
puts Person.new.foo
puts Book.foo
# puts Book.new.foo

puts "*"*30
# 当包含或扩展一个模块时，相应的回调代码会被执行
module ConcernExample
  def self.included(base)
    base.extend(ClassMethods)
    base.send(:include, InstanceMethods)
  end

  module ClassMethods
    def bar
      'bar'
    end
  end

  module InstanceMethods
    def baz
      'baz'
    end
  end
end

class Something
  include ConcernExample
end

Something.bar
# Something.baz
# Something.new.bar
Something.new.baz