class BoatingTest
    
    attr_accessor :test_name, :status , :instructor
    attr_reader :student

    @@all = []

    def self.all
        @@all
    end

    def initialize(test_name, status, student, instructor)
        @test_name = test_name
        @status = status
        @student = student
        @instructor = instructor
        BoatingTest.all << self
    end

end
