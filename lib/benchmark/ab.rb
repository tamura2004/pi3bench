type = "railsapi"
# type = "static"
# httpd = "nginx"
httpd = "puma"
host = "pi3"
port = "3000"
url = "pcs"

filename = "#{type}_#{httpd}_#{host}_c100_n300.txt"
open(filename, "w") do |fh|
  fh.puts `ab -c 100 -n 300 http://#{host}:#{port}/#{url}`
end

# scout mac = 08:60:6e:da:40:38
