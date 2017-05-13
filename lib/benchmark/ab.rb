
["air", "pi3"].each do |host|
  open("railsapi_#{host}_c100_n300.txt", "w") do |fh|
    fh.puts `ab -c 100 -n 300 http://#{host}:3000/pcs`
  end
end


