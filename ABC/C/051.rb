# https://atcoder.jp/contests/abc051/tasks/abc051_c

sx,sy,tx,ty = gets.chomp.split.map(&:to_i)

ans = []
dy = ty-sy
dx = tx-sx
#1 s=>g
dy.times do
    ans << "U"
end
dx.times do
    ans << "R"
end
#2 g=>s
dy.times do
    ans << "D"
end
dx.times do
    ans << "L"
end
#3 s=>g
ans << "L"
(dy+1).times do
    ans << "U"
end
(dx+1).times do
    ans << "R"
end
ans << "D"
#4 g=>s
ans << "R"
(dy+1).times do
    ans << "D"
end
(dx+1).times do
    ans << "L"
end
ans << "U"

puts ans.join
