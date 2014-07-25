def luck_check(input_number)
  ticket = (input_number.to_s)

  if ticket.length.even?
    ticket = ticket.split("")
    ticket1 = ticket.slice((ticket.length/2 - ticket.length/2)..ticket.length/2-1).map(&:to_i)
    ticket2 = ticket.slice((ticket.length/2)..-1).map(&:to_i)

    #refactored on lines 6 & 7
    # ticket1 = ticket1.map(&:to_i)
    # ticket2 = ticket2.to_s.scan(/\d/).map {|i| i.to_i}

    return ticket1.inject(:+) == ticket2.inject(:+)
  else
    ticket = ticket<<"0"
    ticket = ticket.split("")

    ticket1 = ticket.slice((ticket.length/2 - ticket.length/2)..ticket.length/2-1).map(&:to_i)
    ticket2 = ticket.slice((ticket.length/2)..-1).map(&:to_i)

    ticket1.pop
    ticket2.pop

    return ticket1.inject(:+) == ticket2.inject(:+)

    #refactored out on lines 18 & 19
    # ticket1 = ticket1.to_s.scan(/\d/).map {|i| i.to_i}
    # ticket2 = ticket2.to_s.scan(/\d/).map {|i| i.to_i}

    #refactored out on line 24
    # sum_ticket1 = ticket1.inject{|sum,x| sum + x}
    # sum_ticket2 = ticket2.inject{|sum,x| sum + x}
  end

  #refactored out on lines 13 & 24
  # if sum_ticket1==sum_ticket2
  #   true
  # else
  #   false
  # end

end

print luck_check(26053)
