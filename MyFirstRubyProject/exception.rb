# frozen_string_literal: true

# 异常处理：
begin
  # 这里的代码可能会抛出异常
  raise RuntimeError, 'You ran out of memory.'
rescue NoMemoryError => exception_variable
  puts 'NoMemoryError was raised', exception_variable
rescue RuntimeError => other_exception_variable
  puts 'RuntimeError was raised now'
else
  puts 'This runs if no exceptions were thrown at all'
ensure
  puts 'This code always runs no matter what'
end
