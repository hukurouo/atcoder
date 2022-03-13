# https://atcoder.jp/contests/abc243/tasks/abc243_b

N = gets.to_i
aa = gets.chomp.split.map(&:to_i)
bb = gets.chomp.split.map(&:to_i)

i=0
ans1=0
ans2=0
hash={}
while i<N
  if aa[i] == bb[i]
    ans1 += 1
  end
  if hash[aa[i]]
    ans2 += 1
  else
    hash[aa[i]] = true
  end
  if hash[bb[i]]
    ans2 += 1
  else
    hash[bb[i]] = true
  end
  i+=1
end
puts ans1
puts ans2 - ans1