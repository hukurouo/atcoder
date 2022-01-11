# https://atcoder.jp/contests/abc162/tasks/abc162_d

N = gets.to_i
s = gets.chomp

arr_r = [0]
arr_g = [0]
arr_b = [0]
s.chars.each do |s|
    if s=="R"
        arr_r << arr_r.last + 1
        arr_g << arr_g.last
        arr_b << arr_b.last
    elsif s=="G"
        arr_r << arr_r.last
        arr_g << arr_g.last + 1
        arr_b << arr_b.last
    else
        arr_r << arr_r.last
        arr_g << arr_g.last
        arr_b << arr_b.last + 1
    end
end

j=1
ans=0
while j<N-1
    if s[j] == "R"
        t = (arr_g[j])*(arr_b[-1]-arr_b[j]) + (arr_b[j])*(arr_g[-1]-arr_g[j])
        i=j-1
        k=j+1
        while i >= 0 && k < N
            if s[i] != "R" && s[k] != "R" && s[i] != s[k]
                t-=1
            end
            i-=1
            k+=1
        end
        ans += t
    elsif s[j] == "G"
        t = (arr_r[j])*(arr_b[-1]-arr_b[j]) + (arr_b[j])*(arr_r[-1]-arr_r[j])
        i=j-1
        k=j+1
        while i >= 0 && k < N
            if s[i] != "G" && s[k] != "G" && s[i] != s[k]
                t-=1
            end
            i-=1
            k+=1
        end
        ans += t
    else
        t = (arr_g[j])*(arr_r[-1]-arr_r[j]) + (arr_r[j])*(arr_g[-1]-arr_g[j])
        i=j-1
        k=j+1
        while i >= 0 && k < N
            if s[i] != "B" && s[k] != "B" && s[i] != s[k]
                t-=1
            end
            i-=1
            k+=1
        end
        ans += t
    end
    j+=1
end
puts ans