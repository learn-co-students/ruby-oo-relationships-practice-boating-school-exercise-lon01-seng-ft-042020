require 'pry'
class Instructor

    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        
        the_test = Boatingtest.all.find {|test| test.student == student && test.name == test_name}
        if the_test
           the_test.status = "passed"
        else 
            boating_test = Boatingtest.new(student, test_name, "passed", self)
        end
    end
end