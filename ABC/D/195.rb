# https://atcoder.jp/contests/abc195/tasks/abc195_d

N,M,Q = gets.chomp.split.map(&:to_i)
wv = Array.new(N) { gets.split.map(&:to_i) }.sort_by{|x|x[1]*-1}
arr = gets.chomp.split.map(&:to_i)
queries = Array.new(Q) { gets.split.map(&:to_i) }

queries.each do |l,r|
    box = []
    arr.each_with_index do |a,i|
        box << a unless i.between?(l-1,r-1)
    end
    box = box.sort
    lug = wv.dup
    ans=0
    while lug.size > 0 && box.size > 0
        w,v = lug.shift
        i=0
        flag = false
        while i<box.size
            if box[i] >= w
                flag = true
                break
            end
            i+=1
        end
        if flag
            ans+=v
            box.delete_at i
        end
    end
    puts ans
end