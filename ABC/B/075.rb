# https://atcoder.jp/contests/abc075/tasks/abc075_b

H,W = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.chomp }

def is_check(i,j,arr)
    return if i<0 || j<0
    return if i>=H || j>=W
    if arr[i][j] == "#"
        true
    else
        false
    end
end

H.times do |i|
    W.times do |j|
        if arr[i][j] == "."
            cnt = 0
            (i-1..i+1).each do |ii|
                (j-1..j+1).each do |jj|
                    cnt += 1 if is_check(ii,jj,arr)
                end
            end
            arr[i][j] = cnt.to_s
        end
    end
end

puts arr