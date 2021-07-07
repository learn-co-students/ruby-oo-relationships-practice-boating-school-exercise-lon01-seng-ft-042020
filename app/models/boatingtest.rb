class BoatingTest
    attr_accessor :student, :status, :name, :instructor
    @@all = []
    def initialize(student, name, status, instructor)
      @student = student
      @name = name
      @status = status
      @instructor = instructor
      @@all << self
    end

    def self.all
        @@all
    end

    
  end