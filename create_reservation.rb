#!/usr/bin/env ruby

require_relative 'reservation.rb'

valid = Inherit.new
res = Reserve.new
res.person
valid.emailer
valid.is_valid_email?(@email)
res.calender
res.time_slot
res.party
puts "We will email you with any updates at #{valid.email}"

res_hash = { name: res.name, day: res.day, what_time: res.what_time, size: res.size, email: res.email }

reservations = File.new("reservation.txt", 'a+')
reservations.puts("#{res.name}", "#{res.day}", "#{res.what_time}", "#{res.size}", "#{valid.email}", "#{Time.now}", "==========")
reservations.close
