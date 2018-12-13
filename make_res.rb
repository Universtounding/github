#!/usr/bin/env ruby

require_relative 'reservation.rb'

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


res_hash = {
  name: res.name, day: res.day, what_time: res.what_time, size: res.size, email: valid.email
}


reservations = File.new("reservation.txt", 'a+')
reservations.puts("Name: #{res.name}", "Date: #{res.day}", "Time: #{res.what_time}", "People: #{res.size}", "Email: #{valid.email}", "Time_rec: #{Time.now}")
reservations.close
