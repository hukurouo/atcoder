# https://atcoder.jp/contests/abc218/tasks/abc218_d

N = gets.to_i
xy = Array.new(N) { gets.split.map(&:to_i) }

hashx={}
hashy={}
ans=0
xy.each do |x,y|
    hashx[x]||=[]
    hashy[y]||=[]
    hashx[x].each do |x2,y2|
        hashy[y].each do |x3,y3|
            ans+=1 if hashy[y2].include? [x3,y2]
        end
    end
    hashx[x] << [x,y]
    hashy[y] << [x,y]
end
puts ans