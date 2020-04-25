require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

adam = Student.new("Adam")
ben = Student.new("Ben")
chris = Student.new("Chris")

shanks = Instructor.new("Mr Shanks")
wilbs = Instructor.new("Mr Wilberforce")

puts Student.all

puts Instructor.all


adam.add_boating_test("steering", "pending", shanks)
adam.add_boating_test("anchoring", "passed", wilbs)

puts Student.find_student("Adam")


puts adam.grade_percentage

shanks.pass_student("steering", adam)

wilbs.fail_student("coming alongside", ben)

puts BoatingTest.all


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line



