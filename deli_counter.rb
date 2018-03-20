# Write your code here.
require 'pry'

katz_deli = []

def line(array)
  if array.length == 0 
  puts "The line is currently empty."
  else 
    line_array = []
    array.each do |current_name|
      line_array.push(" " << (array.index(current_name). + 1).to_s << ". " << current_name)
    end
     puts "The line is currently:#{line_array.join}"

  end
 #binding.pry
end

def take_a_number(katz_deli, next_customer)
  katz_deli << next_customer
  puts "Welcome, #{next_customer}. You are number #{katz_deli.index(next_customer) + 1} in line."
end

def now_serving (katz_deli)
  if katz_deli.length == 0 
    puts "There is nobody waiting to be served!"
  else puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
 end
end 
 