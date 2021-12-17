# https://atcoder.jp/contests/ddcc2020-qual/tasks/ddcc2020_qual_c

H,W,K = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.chomp }

ans = []
i=1
emp=0
arr.each do |row|
    if row.count("#") == 0
        emp+=1
        next
    end
    ar = []
    sc=0
    row.chars.each do |r|
        sc+=1 if r=="#"
        if r=="#" && sc>1
            i+=1
        end
        ar << i 
    end
    i+=1
    ans << ar
    if emp>0
        emp.times do
            ans << ar
        end
        emp=0
    end
end
if emp>0
    emp.times do
        ans << ans.last
    end
    emp=0
end
ans.each do |a|
    puts a.join(" ")
end
