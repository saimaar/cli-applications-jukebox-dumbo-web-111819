
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
  puts "- I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index{|ele, i| 
    puts "#{i + 1}. #{ele}"
  }
end 

def play(songs)
  puts "Please enter a song name or number:"
  users_input = gets.strip
  array_of_num = (1..9).to_a
  
  
    if songs.include?(users_input)
      puts  "Playing #{users_input}"
      
    elsif array_of_num.include?(users_input.to_i)
      puts "Playing #{songs[users_input.to_i - 1]}"
    else 
      puts "Invalid input, please try again"
    end 

end  

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  users_input = nil
  while users_input != "exit" do 
    puts "Please enter a command:"
    users_input = gets.strip
    if users_input == "list"
      list(songs)
      elsif users_input == "help"
      help()
      elsif users_input == "play"
      play(songs)
    end 
  end 
  
  exit_jukebox      
end 
