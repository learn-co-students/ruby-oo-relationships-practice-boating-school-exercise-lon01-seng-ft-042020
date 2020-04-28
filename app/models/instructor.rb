require'pry'

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

    def pass_student (student, test_name)
    ttbpass = BoatingTest.all.find{|test| test.student == student && test.name == test_name}
    if ttbpass
        ttbpass.status= "passed"
    else 
        boating_test = Boatingtest.new(student, test_name, "passed", self)
    end
end

def fail_student (student, test_name)
    ttbpass = BoatingTest.all.find{|test| test.student == student && test.name == test_name}
    if ttbpass
        ttbpass.status= "failed"
    else 
        boating_test = Boatingtest.new(student, test_name, "failed", self)
    end

    binding.pry
end
end
