require 'json' 
def count_user_ids(path)

  file_content = File.read(path)
  
  
  data = JSON.parse(file_content)
  

  user_id_count = Hash.new(0)

  data.each do |entry|
    user_id = entry["userId"]
    user_id_count[user_id] += 1
  end


  user_id_count
  puts user_id_count
end