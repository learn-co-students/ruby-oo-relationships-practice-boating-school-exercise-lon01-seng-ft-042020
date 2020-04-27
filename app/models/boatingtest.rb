#Join class
class BoatingTest
    
 #Declare a class variable all that points to an empty array    
    @@all = [ ]  

    attr_accessor :student, :test_name, :test_status, :instructor   

 #Initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
 #Upon instantiation add the new boating test object to the array stored in the class variable
  def initialize(student, test_name, test_status, instructor)
    @student = student
    @test_name = test_name
    @test_status = test_status
    @instructor = instructor
    @@all << self
  end 

 #Class method .all returns an array of all boating tests
  def self.all
    @@all
  end 

#Find all the tests a student took 
  def self.find_student_test(student)
    self.all.select{|test| test.student == student}
  end

#Find a given test_name
  def self.find_test_name(test_name)
    self.all.select{|test| test.test_name == test_name}
  end

end

