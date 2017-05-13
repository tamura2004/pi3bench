[1,2,3,4,5,6,7,8,9,10].each do |id|
  Pc.seed do |s|
    s.id = id
    s.number = 100 + id
    s.name = sprintf("pc%03d", id)
  end
end
