def luck_check(input_number)
  ticket = (input_number.to_s).split("")
  ticket1 = ticket.slice((ticket.length/2 - ticket.length/2)..ticket.length/2-1)
  ticket2 = ticket.slice((ticket.length/2)..-1)

  ticket1 = ticket1.to_s.scan(/\d/).map {|i| i.to_i}
  ticket2 = ticket2.to_s.scan(/\d/).map {|i| i.to_i}

  print ticket1
  print ticket2
end

print luck_check(260053)
