require 'open-uri'
require 'uri'
require 'fileutils'


if ARGV.length != 2
  puts "Usage: #{__FILE__} URL LOCAL_FILE_PATH"
  exit
end

url = ARGV[0]
local_file_path = ARGV[1]


begin
  uri = URI.parse(url)
rescue URI::InvalidURIError
  puts "Invalid URL: #{url}"
  exit
end


begin
  puts "Downloading file from #{url}..."
  File.open(local_file_path, 'wb') do |file|
    file.write(URI.open(url).read)
  end
  puts "File downloaded and saved to #{local_file_path}."
rescue StandardError => e
  puts "An error occurred: #{e.message}"
end
