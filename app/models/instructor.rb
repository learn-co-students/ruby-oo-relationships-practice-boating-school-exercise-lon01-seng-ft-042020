require "pry" 

class Instructor
    attr_accessor :name

    @@all = []

    def initialize(first_name)
        @name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        test_to_grade = BoatingTest.all.find {|boatingTest| boatingTest.student == student && boatingTest.test_name == test_name}
        if test_to_grade
            test_to_grade.status = "passed"
            test_to_grade
        else 
            BoatingTest.new(student, test_name, "passed", self)
        end
    end

    def fail_student(student, test_name)
        test_to_grade = BoatingTest.all.find {|boatingTest| boatingTest.student == student && boatingTest.test_name == test_name}
        if test_to_grade
            test_to_grade.status = "failed"
            test_to_grade
        else 
            BoatingTest.new(student, test_name, "failed", self)
        end
    end

end
