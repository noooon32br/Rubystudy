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


#文字列の比較
puts 'ruby' == 'ruby'
puts 'ruby' == 'Ruby'
puts 'ruby' != 'perl'
puts 'ruby' != 'ruby'


#0.5ではなく0になる。小数点以下は切り捨てられる
puts 1 / 2

#小数点以下の値が必要な場合
puts 1.0 / 2

n = 1
puts n.to_f
puts n.to_f / 2

#以下の計算は(2 * 3) + (4 * 5) - (6 / 2)と同じ
puts 2 * 3 + 4 * 5 - 6 / 2

n = 1
#++は構文として無効
#n++

#nを増やす(n = n + 1と同じ)
puts n += 1

#nを減らす(n = n - 1と同じ)
puts n -= 1

#文字列は数値に変換する必要がある
#整数に変換
puts 1 + '10'.to_i

#小数に変換
puts 1 + '10.5'.to_f

#数値を文字列に変換する必要がある
number = 3
puts 'Number is ' + number.to_s

#Rationalクラスを使うと小数ではなく「10分の3」という計算結果が返る
puts 0.1r * 3.0r

#Rationalクラスであれば期待通りの値の比較ができる
puts 0.1r * 3r == 0.3

#Rationalから普通の小数に戻したい場合
puts (0.1r * 3.0r).to_f