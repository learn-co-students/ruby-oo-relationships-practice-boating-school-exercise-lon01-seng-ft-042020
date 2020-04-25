class Instructor

    attr_reader :name
    
    @@all = []

    def self.all
        @@all
    end
    
    def initialize(full_name)
        @full_name = full_name
        Instructor.all << self
    end

    def pass_student(test_name, student)
        test_to_grade = BoatingTest.all.find{|test| test.test_name == test_name && test.student == student}
        if test_to_grade != nil
            test_to_grade.status = "passed"
            test_to_grade.instructor = self
            test_to_grade
        else
            test_to_grade = BoatingTest.new(test_name, "passed", student, self)
        end
    end

    def fail_student(test_name, student)
        test_to_grade = BoatingTest.all.find{|test| test.test_name == test_name && test.student == student}
        if test_to_grade != nil
            test_to_grade.status = "passed"
            test_to_grade.instructor = self
            test_to_grade
        else
            test_to_grade = BoatingTest.new(test_name, "passed", student, self)
        end
    end

end
