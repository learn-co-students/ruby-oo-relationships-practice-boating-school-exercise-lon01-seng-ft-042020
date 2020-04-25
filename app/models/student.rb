require "pry"

class Student
    attr_accessor :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def self.find_student(first_name)
        Student.all.select {|student| student.first_name == first_name}
    end

    def total_tests
        BoatingTest.all.select {|boatingTest| boatingTest.student == self}.length.to_f
    end

    def passed_tests
        BoatingTest.all.select {|boatingTest| boatingTest.student == self && boatingTest.status == "passed"}.length.to_f
    end

    def grade_percentage
        (passed_tests / total_tests) * 100
    end

end
