class NewUser
  attr_accessor :name, :day, :what_time, :size, :email

def initialize
  puts "who is making the reservation?"
    name = gets.chomp.capitalize
      @name = name
      @day = day
      @what_time = what_time
      @size = size
      @email = email
  end

  def emailer
    puts "What is your email?"
      email = gets.chomp
        @email = email
  end

def  calender
  puts "what date is the reservation for?"
    day = gets.chomp
      @day = day
end

def time_slot
  puts "what time would you like to make the reservation?"
    what_time = gets.chomp
      @what_time = what_time
end

def party
  puts "how many are you?"
    size = gets.chomp.to_i
      @size = size
        if size > 10
          puts "that is too many people"
        else
          puts "Just to confirm your reservation is for #{@name}, on #{@day}, at #{@what_time}, with #{@size}?"
    end
  end
end


new = NewUser.new
new.emailer
new.calender
new.time_slot
new.party
puts "We will email you with any updates at #{new.email}"


new_hash = {
  name: new.name, day: new.day, what_time: new.what_time, size: new.size, email: new.email
}


reservations = File.new("reservation.txt", 'a+')
reservations.puts("Name: #{new.name}", "Date: #{new.day}", "Time: #{new.what_time}", "People: #{new.size}", "Email: #{new.email}")
reservations.close
