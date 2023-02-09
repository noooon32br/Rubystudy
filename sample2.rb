n = 11
if n > 10
  puts '10より大きい'
else
  puts '10以下'
end

#国によってあいさつを変えたい場合
country = 'italy'
if country == 'japan'
  puts 'こんにちは'
elsif country == 'us'
  puts 'Hello'
elsif country == 'italy'
  puts 'Ciao'
else
  puts '???'
end

#メソッドの定義
def add(a,b)
  a + b
end

puts add(1,2) 

#メソッド名はスネークケースで書く
def Hello_world
  'Hello, world'
end

