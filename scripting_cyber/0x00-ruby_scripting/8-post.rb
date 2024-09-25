require 'net/http'
require 'uri'
require 'json'

def post_request(url, body_params)
  uri = URI.parse(url)
  http = Net::HTTP.new(uri.host, uri.port)

  # Use SSL if the URL uses https
  http.use_ssl = true if uri.scheme == 'https'

  request = Net::HTTP::Post.new(uri.request_uri)
  request.content_type = 'application/json'
  request.body = body_params.to_json

  response = http.request(request)


  puts "Response status: #{response.code} #{response.message}"
  puts "Response body:"
  puts response.body
end
