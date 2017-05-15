type = "static"
httpd = "nginx"
dbms = "none"
host = "localhost"
port = "80"
url = "50x.html"

filename = "#{type}_#{host}_#{httpd}_#{dbms}_c100_n300.txt"
open(filename, "w") do |fh|
  fh.puts `ab -c 100 -n 300 http://#{host}:#{port}/#{url}`
end

# scout mac = 08:60:6e:da:40:38
