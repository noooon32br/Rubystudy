puts 1 + 2

a = 'Hello, world!'
puts a

b = 'こんにちは'
puts b

#オブジェクト(引数1,引数2,引数3)
#オブジェクト.メソッド

puts 1.to_s()

puts 10.to_s(16)

puts (5 + 1 - 2) * 3

def add(a, b)
  a + b
end
puts add(4, 5)

puts s = 'Hello'
puts n = 123 * 2

#ダブルクォーテーションで囲むと\nが改行文字として機能する
puts "こんにちは\nさようなら"

#シングルクォーテーションで囲むと\nはただの文字列になる
puts 'こんにちは\nさようなら'

#式展開
name ='Alice'
puts "Hello, #{name}!"

i = 10
puts "#{i}は16進数にすると#{i.to_s(16)}です"

puts "He said, \"Don't speak.\""