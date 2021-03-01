require 'pry'
class Employee
attr_accessor :name, :manager_name, :salary

@@all = []

def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @@all << self
end

def self.all
    @@all
end

def self.paid_over(money)
    Employee.all.select {|employee| employee.salary > money}
end
    
def self.find_by_department(department)
    Manager.all.find{|manager| manager.department == department}.employees#[0]
        # return the first employee in this department by using the index---^
end

def tax_bracket
    max = salary + 1000
    min = salary - 1000
    Employee.all.find_all{|employee| employee.salary < max && employee.salary > min}
        # what is &&? it's a logical 'AND' operator. If both the operands are non zero, then the condition becomes true.
end

end

binding.pry
