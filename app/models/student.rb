class Student
    
    attr_reader :first_name

    @@all =[]
    
    def self.all
        @@all
    end
    
    def initialize(first_name)
        @first_name = first_name
        Student.all << self
    end
    
    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(test_name, status, self, instructor)
    end

    def self.find_student(name)
        self.all.find{|student| student.first_name == name}
    end 

    def grade_percentage
        all_tests = BoatingTest.all.select{|test| test.student == self }
        passed_tests = all_tests.select{|test| test.status == "passed"}
        result = (passed_tests.length.to_f / all_tests.length.to_f)*100
    end

end
