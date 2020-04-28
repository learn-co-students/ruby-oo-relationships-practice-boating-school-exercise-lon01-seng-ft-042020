require 'pry'
class Student
    attr_reader :first_name
    @@all = []
    
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test, status, instructor)
        # self = student instance - object
        #initializes a new boating test with 4 parameters
        BoatingTest.new(self, test, status, instructor)      
    end 

    def self.find_student(student_first_name)
        @@all.find {|student| student.first_name == student_first_name}
    end

    def grade_precentage

    # Here we are calling on the BoatingTest class, so in boatingtest.rb you can see
    # we have defined an accessor that allows us to read & write .student on all 
    # instances of BoatingTest. So the line below is going through all the tests
    # and making an array of all the tests that meet the condidition == self (which in
    # this case is the whole instance of student
    t = BoatingTest.all.select {|test| test.student == self}
    total_t = t.length.to_f
    passed_t = t.select {|test| test.status == "passed"}
    num_of_passed = passed_t.length
    percentage = (num_of_passed / total_t) * 100
    end

    # 

#binding.pry
    
end
