# frozen_string_literal: true

# 哈希表是 Ruby 的主要键/值对表示法
# 哈希表由大括号表示
hash = {'color' => 'green', 'size' => 'small'}
puts hash.keys
puts hash['key'].class

# 从 Ruby 1.9 开始，用符号作为键的时候有特别的记号表示
puts '#'*20
new_hash = { defcon: 3, action: true }
puts new_hash.keys

# 检查键值是否存在
puts new_hash.key(:defcon)
puts new_hash.value?(3)

# 控制流
puts '#'*20
if true
  puts "if statement"
elsif false
  puts "else if, optional"
else
  puts "else, also optional"
end