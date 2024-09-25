require 'digest'

def crack_password(hashed_password, dictionary_file)

  File.foreach(dictionary_file) do |line|
    
    password = line.chomp

    
    hash = Digest::SHA256.hexdigest(password)


    if hash == hashed_password
      puts "Password found: #{password}"
      return
    end
  end

  puts "Password not found in dictionary."
end


if ARGV.length != 2
  puts "Usage: #{File.basename(__FILE__)} HASHED_PASSWORD DICTIONARY_FILE"
  exit 1
end

hashed_password = ARGV[0]
dictionary_file = ARGV[1]

crack_password(hashed_password, dictionary_file)
