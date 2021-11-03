## 重複無しで3ペアを選ぶ
~~~
(0..n-1).each do |i|
    ((i+1)..n-1).each do |j|
        ((j+1)..n-1).each do |k|
~~~

## よくあるミス
if文が == じゃなくて = になっている
`[ny][ny]`とかになっている
xとXの勘違い

## 全探索
- 問題文通りに探索
- あり得るものを全通り探索
    - すでにわかっているものは探索しない
- 答えを全探索
    - 探索の通り数を絞り込む

## 二分探索
~~~
a = [2, 3, 4, 6, 9, 10]
puts a.bsearch {|x| x > 7}                # => 9 要素
puts a.bsearch_index {|x| x > 7}          # => 4 インデックス
~~~

## 素数判定
https://qiita.com/norioc/items/5c270ad6ff5d22d1efd0
~~~
require "prime"
Prime.each(10000)
3.prime?
~~~