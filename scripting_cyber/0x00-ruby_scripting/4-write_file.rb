require 'json'


def merge_json_files(file1_path, file2_path)
  # Lire le contenu des deux fichiers
  file1_content = File.read(file1_path).strip
  file2_content = File.read(file2_path).strip


  file1_data = file1_content.empty? ? [] : JSON.parse(file1_content)
  file2_data = file2_content.empty? ? [] : JSON.parse(file2_content)

  merged_data = file2_data + file1_data

  File.open(file2_path, 'w') do |f|
    f.write(JSON.pretty_generate(merged_data))
  end

  puts "Merged JSON written to #{file2_path}"
end
