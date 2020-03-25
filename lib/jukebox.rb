def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  
  songs.each_with_index do |song, index|
    if user_input.to_i == index + 1 or user_input == song
      puts "Playing #{song}"
      break
    end
    if index == songs.length - 1
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while true do
    puts "Please enter a command:"
    user_input = gets.strip
    
    case user_input
    when "exit"
      exit_jukebox
      break
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    else
      puts "Invalid command"
    end
  end
end