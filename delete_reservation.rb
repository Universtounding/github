
puts "Were there any reservations we have to call back?"
  answer = gets.chomp
    case answer
    when "yes"
      puts "Forward them to the manager on duty so they can call them!"
    when "no"
      File.delete("reservation.txt")
        puts "Download has been completed!"
    else
      puts "Please enter in a correct response!"
    end
