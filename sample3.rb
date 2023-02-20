if 0
  puts '条件は真です'
end

if nil
  puts '条件は偽です'
end

total = 100
if total < 200
  puts "合計は200未満です"
end

#2進数
puts 0b11111111

#8進数
puts 0377

#16進数
puts 0xff

#10進数
puts 0d255

#ビット演算子
puts sprintf '%#b', (0b1010 & 0b1100)

puts 10.class

#有理数リテラルを使う（3rが有理数リテラル）
r = 2 / 3r
puts r
puts r.class


#文字列から有理数に変換する
r = '2/3'.to_r
puts r
puts r.class

#複素数リテラルを使う（0.5iが複素数リテラル）
c = 0.3 - 0.5i
puts c
puts c.class

puts 1 && 2 && 3
puts 1 && nil && 3
puts 1 && false && 3

puts nil || false

t1 = true
f1 = false

puts t1 and f1
puts t1 or f1
not t1

#!は||よりも優先順位が低い
puts !(f1) || t1

#notは||よりも優先順位が低い
puts not(f1 || t1)

t1 = true
t2 = true
f1 = false

puts t1 || t2 && f1
puts t1 or t2 and f1

def greet(country)
  #countryがnil(またはfalse)ならメッセージを返してメソッドを抜ける
  country or return 'countryを入力してください'
  
  if country == 'japan'
    'こんにちは'
  else
    'Hello'
  end
end

puts greet(nil)
puts greet('japan')

status = 'error'
unless status == 'ok'
  '何か異常があります'
end

