## 重複無しで3ペアを選ぶ
~~~
(0..n-1).each do |i|
    ((i+1)..n-1).each do |j|
        ((j+1)..n-1).each do |k|
~~~