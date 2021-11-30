# https://atcoder.jp/contests/abc130/tasks/abc130_c

W,H,x,y = gets.chomp.split.map(&:to_i)

if W/2.0==x && H/2.0==y
    puts "#{W*H/2.0} 1"
else
    puts "#{W*H/2.0} 0"
end