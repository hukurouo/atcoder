# https://atcoder.jp/contests/abc173/tasks/abc173_c

H,W,K = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.chomp.chars }

ans=0
[0, 1].repeated_permutation(H).each do |bits_h|
    [0, 1].repeated_permutation(W).each do |bits_w|
        arr_t = Marshal.load(Marshal.dump(arr))
        i=0
        while i<H
            j=0
            while j<W
                if bits_h[i] == 1 || bits_w[j] == 1
                    arr_t[i][j] = "."
                end
                j+=1
            end
            i+=1
        end
        if arr_t.flatten.count("#") == K
            ans+=1
        end
    end
end
puts ans