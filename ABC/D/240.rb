# https://atcoder.jp/contests/abc240/tasks/abc240_d

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

a1 = arr.shift
st = [a1]
puts st.size

top = a1
num = 1
arr.each do |a|
  if a == top
    num += 1
  else
    i = 1
    until i == a
      if st[-1*i] == a
        i+=1
      else
        break
      end
    end
    top = a
    num = i
  end
  if num == a
    st.pop(a-1)
    top = st[-1]
    j = 1
    while st[-1*(j+1)]
      if st[-1*(j+1)] == top
        j += 1
      else
        break
      end
    end
    num = j
  else
    st.push(a)
  end
  puts st.size
end