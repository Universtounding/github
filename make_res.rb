#!/usr/bin/env ruby

require_relative 'reservation.rb'

create_user = NewRes.new
p create_user

res_hash = {
  name: create_user.name, day: create_user.day, what_time: create_user.what_time, size: create_user.size, email: create_user.email
}


reservations = File.new("reservation.txt", 'a+')
reservations.puts("Name: #{create_user.name}", "Date: #{create_user.day}", "Time: #{create_user.what_time}", "People: #{create_user.size}", "Email: #{create_user.email}", "Time_rec: #{Time.now}")
reservations.close
