def compress(a)
  m = Hash.new
  a.sort.uniq.each_with_index do |v, i|
    m[v] = i + 1
  end
  return a.map {|v| m[v] }
end