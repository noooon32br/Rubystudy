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