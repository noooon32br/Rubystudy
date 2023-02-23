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

#unlessの結果を変数に代入する
message =
unless status == 'ok'
  '何か異常があります'
else
  '正常です'
end

puts message

puts country = 'italy'

#if文を使う場合
if country == 'japan'
  'こんにちは'
elsif country == 'us'
  'Hello'
elsif country == 'italy'
  'Ciao'
else
  '???'
end

#case分を使う場合
puts case country
when 'japan'
  'こんにちは'
when 'un'
  'Hello'
when 'italy'
  'Ciao'
else
  '???'
end


n = 11
if n > 10
  '10より大きい'
else
  '10以下'
end

n = 11
message = n > 10 ? '10より大きい' : '10以下'

puts message

#引数なしの場合はcountryに'japan'を設定する
def greet(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

puts greet
puts greet('us')

#システム日時や他のメソッドの戻り値をデフォルト値に指定する
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'BAR'
end

foo

#yが指定されなければxの値をyに設定する
def point(x,y = x)
  puts "x=#{x}, y=#{y}"
end

point(3)
point(3, 10)

#から文字列であればtrue、そうでなければfalse
puts ''.empty?
puts 'abc'.empty?

#引数の文字列が含まれていればtrue、そうでなければfalse
puts 'watch'.include?('at')
puts 'watch'.include?('in')

#奇数ならture、偶数ならfalse
puts 1.odd?
puts 2.odd?

#偶数ならture、奇数ならfalse
puts 1.even?
puts 2.even?

#オブジェクトがnilであればture、そうでなければfalse
puts nil.nil?
puts 'abc'.nil?
puts 1.nil?

#3の倍数ならtrue、それ以外ならfalseを返す
def multiple_of_three?(n)
  n % 3 == 0
end

puts multiple_of_three?(4)
puts multiple_of_three?(5)
puts multiple_of_three?(6)

a = 'ruby'

#upcaseだと変数aの値は変化しない
puts a.upcase
puts a

#upcase!だと変数aの値も大文字に変わる
puts a.upcase!
puts a

#引数の内容を変更しない
def reverse_upcase(s)
  s.reverse.upcase
end

s = 'ruby'

puts reverse_upcase(s)
puts s


#通常のメソッド定義
def greet
  'Hello!'
end

#エンドレスメソッド定義（=の続けて処理や戻り値を書く）
def greet = 'Hello!'
  
puts greet

