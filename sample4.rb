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