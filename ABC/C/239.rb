# https://atcoder.jp/contests/abc239/tasks/abc239_c

x1,y1,x2,y2 = gets.chomp.split.map(&:to_i)

list = [
  [x1+1,y1+2],
  [x1+2,y1+1],
  [x1+2,y1-1],
  [x1+1,y1-2],
  [x1-1,y1-2],
  [x1-2,y1-1],
  [x1-2,y1+1],
  [x1-1,y1+2]
]

flag = false

flag = true if list.include? [x2+1,y2+2]
flag = true if list.include? [x2+2,y2+1]
flag = true if list.include? [x2+2,y2-1]
flag = true if list.include? [x2+1,y2-2]
flag = true if list.include? [x2-1,y2-2]
flag = true if list.include? [x2-2,y2-1]
flag = true if list.include? [x2-2,y2+1]
flag = true if list.include? [x2-1,y2+2]

if flag
  puts "Yes"
else
  puts "No"
end