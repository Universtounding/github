#!/usr/bin/env ruby

reservations = File.read("reservation.txt")

organize = reservations.split

organize.each do |data|
  p data
end
