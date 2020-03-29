# Add your code here
require "pry"

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.strip
  
  if songs.include?(choice)
    puts "Playing #{choice}"
  elsif choice.to_i <= songs.length && choice.to_i > 0
    puts "Playing #{songs[choice.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  i = 1
  songs.each do |song| 
    puts "#{i}. #{song}"
    i += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  continue_playing = true
  
  while continue_playing do
    input = gets.strip
    case input
      when "help"
        help
      when "play"
        play(songs)
      when "list"
        list(songs)
      when "exit"
        exit_jukebox
        continue_playing = false
      else
        puts "Invalid choice please try again or type help for options"
    end
  end
end



