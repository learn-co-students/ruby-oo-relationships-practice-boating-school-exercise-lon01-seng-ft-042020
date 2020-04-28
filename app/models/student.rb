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

    def add_boating_test(name, status, instructor)
        BoatingTest.new(self, name, status, instructor)
    end

    def self.find_student(student_first_name)
        @@all.find {|student| student.first_name == student_first_name}
    end

    def grade_precentage
        t = BoatingTest.all.select {|test| test.student == self}
        totaltest = t.length.to_f
        passedtest = t.select {|test| test.status == "passed"}
        number_of_passedtest = passedtest.lenght.to_f
        percentage = (passedtest / number_of_passedtest) * 100
    end
end
