type = "railsapi"
httpd = "puma"
dbms = "postgres"
host = "localhost"
port = "9999"
url = "pcs"
con = 100
num = 300

filename = "#{type}_#{host}_#{httpd}_#{dbms}_p#{port}_c#{con}_n#{num}.txt"
open(filename, "w") do |fh|
  fh.puts `ab -c #{con} -n #{num} http://#{host}:#{port}/#{url}`
end

# scout mac = 08:60:6e:da:40:38
