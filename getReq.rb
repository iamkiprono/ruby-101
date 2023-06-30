require 'net/http'

url = URI.parse('https://jsonplaceholder.typicode.com/users')
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = (url.scheme == 'https')

request = Net::HTTP::Get.new(url.request_uri)
response = http.request(request)

# Process the response
if response.code == '200'
  data = response.body
  puts data
  # Do something with the data
else
  puts "Error: #{response.code} #{response.message}"
end