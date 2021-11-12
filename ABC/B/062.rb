# https://atcoder.jp/contests/abc062/tasks/abc062_b

H,W = gets.chomp.split.map(&:to_i);
arr = Array.new(H) { gets.chomp }

fixed = []
fixed << ["#"*(W+2)]
arr.each do |a|
    fixed << ["#" + a + "#"]
end
fixed << ["#"*(W+2)]
puts fixed