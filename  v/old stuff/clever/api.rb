require 'net/https'
require 'json'

uri = URI('https://api.getclever.com/v1.1/sections')

http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

request = Net::HTTP::Get.new(uri.request_uri)
request.basic_auth('DEMO_KEY','')

response = http.request(request)
students = JSON.parse(response.body)['data'].map do |sec|
  sec['data']['students'].length
end

students.sort!

m = students.length / 2

puts students.length%2 == 0 ? (students[m - 1] + students[m]) / 2 : students[m]
