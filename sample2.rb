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

# %q! !はシングルクォートで囲んだことと同じになる
puts %!He said, "Don't speak."!

# %Q! !はダブルクオートで囲んだことと同じになる（改行文字や式展開が使える）
something = "Hello."
puts %Q!He said, "#{something}"!

# ?を区切り文字として使う
puts %q?He said, "Don't speak."?

puts "Line 1,
Line 2"

a = <<TEXT
これはドキュメントです。
複数行にわたる長い文字列を作成するのに便利です。
TEXT
puts a

# ヒアドキュメントの識別子としてHTMLを使う場合
<<HTML
<div>
  <img src="sample.jpg">
</div>
HTML

def some_method
  <<~TEXT
    \ これはヒアドキュメントです。
    \ <<-を使うと最後の識別子をインデントさせることができます。
  TEXT
end

puts some_method

#<<~を使うと内部文字列のインデント部分が無視される


name = 'Alice'
a = <<TEXT
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT
puts a

#<<"TEXT"のように、識別子をダブルクオートで囲んだ場合、式展開が有効。シングルクオートで囲むと無効になる

#ヒアドキュメントを直接引数として渡す（prependは渡された文字列を先頭に追加するメソッド）
a = 'Ruby'
a.prepend(<<TEXT)
Java
Python
TEXT
puts a

#ヒアドキュメントで作成した文字列に対して、直接upcaseメソッドを呼び出す
#(upcaseは文字列を全て大文字にするメソッド)
b = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts b


#ヒアドキュメントを2つ同時に使って配列を作る
c = [<<TEXT1, <<TEXT2]
Alice
Bob
TEXT1
Matz
Jnchito
TEXT2

#0番目の要素にはTEXT1の内容が入る
puts c[0]

#1番目の要素にはTEXT2の内容が入る
puts c[1]