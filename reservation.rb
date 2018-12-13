#!/usr/bin/env ruby

class Reserve
  attr_accessor :name, :day, :what_time, :size, :email

def initialize
      @name = name
      @day = day
      @what_time = what_time
      @size = size
      @email = email
  end

def person
  puts "who is making the reservation?"
  name = gets.chomp.capitalize
  @name = name
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

class Inherit < Reserve

VALID = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

def emailer
  puts "What is your email?"
  email = gets.chomp
    @email = email
end

def is_valid_email? email
  if @email =~ VALID
    puts "That's a nice email!"
  else
    puts "#{email_redo}"
  end
end

def email_redo
  puts "Please enter valid email!"
  email = gets.chomp
  @email = email
    if @email =~ VALID
      puts "That's a nice email!"
    else
      puts "#{email_redo}"
    end
  end
end

class NewRes < Inherit

  def initialize
    valid = Inherit.new
    res = Reserve.new

    res.person
    20.times { print "-" }
    puts
    valid.emailer
    20.times { print "-" }
    puts
    valid.is_valid_email?(@email)
    20.times { print "-" }
    puts
    res.calender
    20.times { print "-" }
    puts
    res.time_slot
    20.times { print "-" }
    puts
    res.party
    20.times { print "-" }
    puts
    puts "We will email you with any updates at #{valid.email}"
  end
end
