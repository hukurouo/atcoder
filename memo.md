## よくあるミス
if文が == じゃなくて = になっている
`[ny][ny]`とかになっている
xとXの勘違い
デバッグ用putsの消し忘れ
s="123"; s[0..0] => "1" となる
s[a..b]では""は出せない
s=[1,2,3]; s[0,0] => [] とするべき  

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
a.bsearch_index {|x| x > 7} || a.size

l=0
r=10**20
while r-l > 1
    mid = (l+r)/2
    if (mid*(mid+1))/2 <= n+1
        l=mid
    else
        r=mid
    end
end
~~~

## 素数判定
https://qiita.com/norioc/items/5c270ad6ff5d22d1efd0
~~~
require "prime"
Prime.each(10000)
3.prime?
~~~

## 1000000007 で割ったあまり
解説
https://qiita.com/drken/items/3b4fdf0a78e7a138cd9a

ライブラリ
https://github.com/universato/ac-library-rb/blob/main/document_ja/modint.md

## しゃくとり法が使える場面
長さ n の数列 a1,a2,…,an において
- 「条件」を満たす区間 (連続する部分列) のうち、最小の長さを求めよ
- 「条件」を満たす区間 (連続する部分列) のうち、最大の長さを求めよ
- 「条件」を満たす区間 (連続する部分列) を数え上げよ

https://qiita.com/drken/items/ecd1a472d3a0e7db8dce

## 切り上げ
~~~
def ceil(n,d)
    if n%d==0
        return n/d
    else
        return n/d + 1
    end
end
# rubyの n/d はデフォで切り捨て
~~~

## queue
~~~
DX = [1,0,-1,0]
DY = [0,1,0,-1]
ans=0
visited = Array.new(H) { Array.new(W,nil) }
queue = []
queue << [s[0], s[1], 0]
until queue.empty?
    y, x, cost = queue.shift
    next if visited[y][x]
    visited[y][x] = cost
    4.times do |i|
        ny = y + DY[i]
        nx = x + DX[i]
        next if ny < 0 || nx < 0 || H <= ny || W <= nx || arr[ny][nx]=="#"
        queue.push([ny, nx, cost+1])
    end
end
~~~

## 約数

aがnの約数であるような対(a,n)を探すとき、nを固定してaを探すよりもaを固定してnを探す方が効率的
~~~
div = np.zeros(N+1, np.int64)
for n in range(1, N+1):
  for m in range(n, N+1, n):
    div[m] += 1
~~~