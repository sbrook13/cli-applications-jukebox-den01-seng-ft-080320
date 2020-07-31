# Add your code here

require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
   puts "I accept the following commands:\n- help : displays this help message\n- list : displayes a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
end

def list(songs)
  song_hash = {}
  songs.each_with_index {|item, index|
    song_hash[item] = index+1
  }  
  song_hash.each do |k,v|
      puts "#{v}. #{k}"
  end
end 

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.strip
  song_hash = {}
  songs.each_with_index {|item, index|
    song_hash[item] = index+1
  } 
  song_hash.each {|k,v|
    if song_choice == k || song_choice == v 
      puts "Playing #{k}"
    else
      puts "Invalid input, please try again"
    end
  }
end 

def exit_jukebox
  puts "Goodbye"
end 

def run 
  loop do
    puts "Please enter a command"
    command = gets.strip
    if command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif  command == "exit"
      exit_jukebox
      break
    else
      help
    end
  end  
end
    
# puts say_hello(users_name)