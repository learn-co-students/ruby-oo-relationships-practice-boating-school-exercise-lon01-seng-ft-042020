class Student

#Declare a class variable all that points to an empty array    
@@all = [ ]
    
attr_accessor :first_name, :test_name, :test_status, :instructor

#Initialize with first_name
#Upon instantiation add the new student object to the array stored in the class variable
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end 

#Class method .all returns an array of all the student instances
  def self.all
    @@all
  end

#Class method .find_student takes in a first name and output the student (Object) with that name
  def self.find_student(first_name)
    self.all.find{|student| student.first_name == first_name }
  end

#Find all the tests a student took 
  def tests
    BoatingTest.all.select{|test| test.student.first_name == self.first_name}
  end

#Find all the tests a student passed
  def passed 
    tests.select{|test| test.test_status  == "passed"}
  end

#Instance method grade_percentage should return the percentage of tests that the student has passed, a Float
#(totalPassed/totalTaken.to_f)*100
  def grade_percentage
    (passed.size/tests.size.to_f) * 100
  end

#BONUS: Instance method, add_boating_test creates a new boating test
  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

end

