# https://atcoder.jp/contests/abc217/tasks/abc217_d

L,Q = gets.chomp.split.map(&:to_i)
queries = Array.new(Q) { gets.split.map(&:to_i) }

lines = [L]
queries.each do |c,x|
    i = lines.bsearch_index {|n| n > x}
    if c==1
        if i<1
            lines.unshift x
        else
            lines.insert i,x
        end
    else
        if i>0
            puts lines[i] - lines[i-1]
        else
            puts lines[i]
        end  
    end
    i+=1
end