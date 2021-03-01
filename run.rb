require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

m1 = Manager.new("Emily", 23, "Dank memes")
m2 = Manager.new("Andy", 24, "Feet")
m3 = Manager.new("Amanda", 25, "K dramas")

e1 = Employee.new("Amber", 1513, m1.name)
e2 = Employee.new("Wil", 1800, m3.name)
e3 = Employee.new("Jeffrey", 40000, m2.name)
e4 = Employee.new("Merry", 150000, m3.name)
e5 = Employee.new("Aubrey", 850000, m1.name)
e6 = Employee.new("Kristian", 2000, m1.name)
e7 = Employee.new("Jojo", 70000, m1.name)
e8 = Employee.new("Kyle", 1350, m2.name)
e9 = Employee.new("Nick", 5, m2.name)

m3.hire_employee("Kelsy", 18000)
m2.hire_employee("Robin", 50000)

Manager.average_age
Employee.paid_over(100000)
Employee.find_by_department("Dank memes")[0]

binding.pry
puts "done"
