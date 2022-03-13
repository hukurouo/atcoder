# https://atcoder.jp/contests/abc243/tasks/abc243_c

N = gets.to_i
xy = Array.new(N) { gets.split.map(&:to_i) }
s = gets.chomp

arr = []
xy.each_with_index do |xy, i|
  arr << [xy[0],xy[1],s[i]]
end
arr = arr.sort_by{|x|[x[1], x[0]]}

i=0
y = -1
left = false
right = false
while i<N
  if y != arr[i][1]
    left = false
    right = false
  end
  x,y,s = arr[i]
  if s == "R"
    right = true
  else
    if right
      puts "Yes"
      exit
    end
  end
  i+=1
end
puts "No"