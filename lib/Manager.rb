require 'pry'
class Manager
    attr_accessor :name, :age, :department
    @@all = []

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select {|peeps| peeps.manager_name == self.name} # m1.employees
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self.name)
    end

    def self.all_departments
        self.all.map {|manager| manager.department}.uniq
        # i think u can make a class variable and set up an empty array to shovel in departments too.
    end

    def self.average_age
        ages = Manager.all.map{|manager| manager.age}
        ages.sum / ages.size.to_f
        # .sum adds up all the integers
        # .size gives back the number of elements in an array, in thise case it's giving us how many managers we have
        # .to_f floats are inexact real numbers.
                # .to_f just returns the float instead of a rounded number so this makes it able to give us a decimal value.
        # .to_f -- it also ignores string and doesnt continue adding numbers past the first end point. 
        # .to_f -- if there is not a valid number at the start of the string, 0.0 is returned. 
    end


    binding.pry
end
