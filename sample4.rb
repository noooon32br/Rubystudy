# puts to_hex(0, 0, 0)
# puts to_hex(255, 255, 255)
# puts to_hex(4, 60, 120)
# puts to_ints('#000000')
# puts to_ints('#ffffff')
# puts to_ints('#043c78')

#空の配列を作る
#[]

#3つの要素が格納された配列を作る
#[要素1, 要素2, 要素3]

#空の配列を作成し、そのクラス名を確認する
puts [].class

a = [1, 2, 3]
#1つめの要素を取得
puts a[0]
#2つめの要素を取得
puts a[1]
#3つめの要素を取得
puts a[2]

puts a[100]
puts a.size
puts a.length

a[1] = 20
puts a

a[4] = 50
puts a

a = [1, 2, 3]
#2番目の要素を削除する（削除した値が戻り値になる）
puts a.delete_at(1)
puts a

#存在しない添え字を指定するとnilが返る
puts a.delete_at(100)
puts a

#配列を使って多重代入する
a,b = [1, 2]
puts a
puts b

#右辺の数が少ない場合はnilが入る
c,d = [10]
puts c
puts d

#右辺の数が多い場合ははみ出した値が切り捨てられる
e, f = [100, 200, 300]
puts e
puts f

#divmodは商と余りを配列で返す
14.divmod(3)

#戻り値を配列のまま受け取る
quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"

#多重代入で別々の変数として受け取る
quotient, remainder = 14.divmod(3)
puts "商-#{quotient}, 余り=#{remainder}"

#繰り返し処理
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end

puts sum

a = [1, 2, 3, 1, 2, 3]
#配列から値が2の要素を削除する
#a.delete(2)

#配列から値が奇数の要素を削除する
a.delete_if do |n|
  n.odd?
end

puts a

#偶数のみ、値を10倍にしてから加算するコード
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  #sum_valueはブロック内で初めて登場した変数のため、ブロック内でのみ有効
  sum_value = n.even? ? n * 10 : n
  #sumはブロックの外で作成されたため、ブロックの内部でも参照可能
  sum += sum_value
end

puts sum

#ブロックの外に出すと、sum_valueは参照できない

numbers = [1, 2, 3, 4, 5]
#ブロックの戻り値が新しい配列の各要素になる
new_numbers = numbers.map { |n| n * 10 }

puts new_numbers

numbers = [1, 2, 3, 4, 5, 6]
#ブロックの戻り値が真になった要素だけが集められる
even_numbers = numbers.select { |n| n.even? }

puts even_numbers

numbers = [1, 2, 3, 4, 5, 6]
#3の倍数を除外する（3の倍数以外を集める）
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }

puts non_multiples_of_three

numbers = [1, 2, 3, 4, 5, 6]
#ブロックの戻り値が最初に真になった要素を返す
even_number = numbers.find { |n| n.even? }

puts even_number


numbers = [1, 2, 3, 4]
#各要素を2倍しながら合計する
puts numbers.sum { |n| n * 2 }


numbers = [1, 2, 3, 4]
#初期値に5を指定する（5+1+2+3+4=15)
puts numbers.sum(5)

#配列の要素を連結して1つの文字列にするときのメソッド
chars = ['a', 'b', 'c']
puts chars.join

data = ['a', 2, 'b', 4]
#配列に数値が含まれていても連結可能（to_sメソッドで文字列に変換されるため）
puts data.join

chars = ['a', 'b', 'c']
#先頭に'>'をつけ、各要素を大文字にして連結する
puts chars.sum('>') { |c| c.upcase }


#&:メソッドへの書き換え
#このコードは
['ruby', 'java', 'python'].map { |s| s.upcase }
#こう書き換えられる
['ruby', 'java', 'python'].map(&:upcase)



#範囲オブジェクト
1..5
1...5
'a'..'e'
'a'...'e'

puts (1..5).class
puts (1...5).class

#..を使うと5が範囲に含まれる（1以上5以下）
range = 1..5
puts range.include?(0)
puts range.include?(1)
puts range.include?(4.9)
puts range.include?(5)
puts range.include?(6)

#...を使うと5が範囲に含まれない（1以上5未満）
range = 1...5
puts range.include?(0)
puts range.include?(1)
puts range.include?(4.9)
puts range.include?(5)
puts range.include?(6)

#不等号を使う場合
def liquid?(temperature)
  #0度以上100度未満であれば液体、と判定したい
  0 <= temperature && temperature < 100
end

puts liquid?(-1)
puts liquid?(100)

#範囲オブジェクトを使う場合
def liquid?(temperature)
  (0...100).include?(temperature)
end

puts liquid?(-1)
puts liquid?(99)


def charge(age)
  case age
  #0歳から5歳までの場合
  when 0..5
    0
  #6歳から12歳までの場合
  when 6..12
    300
  #13歳から18歳までの場合
  when 13..18
    600
  #それ以外の場合
  else
    1000
  end
end

puts charge(3)
puts charge(16)

#値が連続する配列を作成する
puts (1..5).to_a
puts (1...5).to_a

puts ('a'..'e').to_a
puts ('a'...'e').to_a
puts ('bad'..'bag').to_a
puts ('bad'...'bag').to_a

#範囲オブジェクトを配列に変換してから繰り返し処理を行う
numbers = (1..4).to_a
puts sum = 0
numbers.each { |n| sum += n }
puts sum

sum = 0
#範囲オブジェクトに対して直接eachメソッドを呼び出す
(1..4).each { |n| sum += n }
puts sum

numbers = []
#1から10まで2回ごとに繰り返し処理を行う
(1..10).step(2) { |n| numbers << n }
puts numbers


a = [1, 2, 3, 4, 5]
puts a.values_at(0, 2, 4)
#最後の要素を取得する
puts a[a.size - 1]

#配列の最後の要素を取得
puts a.last(2)
#配列の先頭の要素を取得
puts a.first(2)