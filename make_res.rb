#!/usr/bin/env ruby

require_relative 'reservation.rb'

res_hash = { name: storage.name, day: storage.day, what_time: storage.what_time, size: storage.size, email: storage.email }
storage = Reserve.new
party = NewRes.new

party.input

reservations = File.new("reservation.txt", 'a+')
reservations.puts("Name: #{storage.name}", "Date: #{storage.day}", "Time: #{storage.what_time}", "People: #{storage.size}", "Email: #{storage.email}", "Time_rec: #{Time.now}")
reservations.close
