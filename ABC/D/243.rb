# https://atcoder.jp/contests/abc243/tasks/abc243_d

N,x= gets.chomp.split.map(&:to_i)
s = gets.chomp

i=0
while 2 ** i <= x
  i+=1
end
dps = i - 1
pos = x - (2 ** (dps))

i=0
while i<N
  if s[i] == "U"
    if x == 1
      next
    end
    dps -= 1
    if dps < 63
      pos /= 2
    end
  elsif s[i] == "L"
    dps += 1
    if dps < 64
      pos *= 2
    end
  else
    dps += 1
    if dps < 64
      pos *= 2
      pos += 1
    end
  end
  i+=1
end

puts 2 ** dps + pos