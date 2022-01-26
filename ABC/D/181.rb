# https://atcoder.jp/contests/abc181/tasks/abc181_d

s = gets.chomp

list=[]
(0..124).each do |n|
    i = n*8
    num_str = format("%03<n>d",n: i)
    list<< num_str.split("")
end

if s.size == 1
    if s=="8"
        puts "Yes"
    else
        puts "No"
    end
    exit
end
if s.size == 2
    l2 = ["80","16","61","24","42","32","23","40","48","84","56","65","72","27","88","69","96"]
    if l2.include? s
        puts "Yes"
    else
        puts "No"
    end
    exit
end

hash={}
s.chars.each do |c|
    hash[c]||=0
    hash[c]+=1
end
list.each do |l|
    ta = l.tally
    f = true
    ta.each do |k,v|
        if !hash[k]
            f = false
            break
        end
        if hash[k] < v
            f = false
        end
    end
    if f
        puts "Yes"
        exit
    end
end
puts "No"