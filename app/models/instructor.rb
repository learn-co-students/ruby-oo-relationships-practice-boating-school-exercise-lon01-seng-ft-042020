class Instructor

#Declare a class variable all that points to an empty array    
@@all = [ ]
    
attr_accessor :name, :specific_test, :student, :test_name

#Initialize with name
#Upon instantiation add the new student object to the array stored in the class variable
  def initialize(name)
    @name = name
    @@all << self
  end 

#Class method .all returns an array of all the instructor instances
  def self.all
    @@all
  end

#Instance method pass_student takes in a student instance and test name
#If there is a BoatingTest that matches the arguments, update the test_status  to 'passed'
#Otherwise, create a test with the student, that boat test name, and the status 'passed'
#Return the BoatingTest instance

  def pass_student(student, test_name)
   specific_test = BoatingTest.find_student_test(student) & BoatingTest.find_test_name(test_name)
   if specific_test.length > 0 
    specific_test.each{|test| test.test_status = "passed"}
   else
   specific_test = BoatingTest.new(student, test_name, "passed", self)
   end
  end #Returning it as an array & not the BoatingTest object 

#Similar to pass_student method above, but changes the test_status to failed instead
  def fail_student(student, test_name)
    specific_test = BoatingTest.find_student_test(student) & BoatingTest.find_test_name(test_name)
    if specific_test.length > 0 
     specific_test.each{|test| test.test_status = "failed"}
    else
    specific_test = BoatingTest.new(student, test_name, "failed", self)
    end
   end #Returning it as an array & not the BoatingTest object 


end
