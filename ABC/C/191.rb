# https://atcoder.jp/contests/abc191/tasks/abc191_c

H,W = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.chomp }

ans=0
y=1
while y<H
    x=1
    while x<W
        if arr[y][x] == "#"
            ans+=1 if arr[y-1][x] == "." && arr[y][x-1] == "."
            ans+=1 if arr[y+1][x] == "." && arr[y][x-1] == "."
            ans+=1 if arr[y+1][x] == "." && arr[y][x+1] == "."
            ans+=1 if arr[y-1][x] == "." && arr[y][x+1] == "."
            ans+=1 if arr[y-1][x] == "#" && arr[y][x+1] == "#" && arr[y-1][x+1] == "."
            ans+=1 if arr[y-1][x] == "#" && arr[y][x-1] == "#" && arr[y-1][x-1] == "."
            ans+=1 if arr[y+1][x] == "#" && arr[y][x+1] == "#" && arr[y+1][x+1] == "."
            ans+=1 if arr[y+1][x] == "#" && arr[y][x-1] == "#" && arr[y+1][x-1] == "."
        end
        x+=1
    end
    y+=1
end
puts ans