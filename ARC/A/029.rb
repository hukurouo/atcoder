# https://atcoder.jp/contests/arc029/tasks/arc029_1

#入力
N = gets.to_i
times = Array.new(N) { gets.to_i }
 
ans = Float::INFINITY
# 全部解くパターンをbit全探索
[0, 1].repeated_permutation(N).each do |bits|
  time_a = 0
  time_b = 0
  times.each_with_index do |time, i|
    if bits[i] == 0
        time_a += time
    else
        time_b += time
    end
  end

  time = [time_a, time_b].max
 
  ans = [ans, time].min
end

res = ans

# 出力
print("#{res}\n")

# bit全探索