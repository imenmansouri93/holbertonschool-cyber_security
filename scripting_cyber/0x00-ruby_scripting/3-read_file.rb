require 'json'

def count_user_ids(path)
  file = File.read(path)
  data = JSON.parse(file)
  
  
  user_count = Hash.new(0)

  data.each do |entry|
    user_count[entry["userId"]] += 1
  end


  user_count.each do |user_id, count|
    puts "#{user_id}: #{count}"
  end
end