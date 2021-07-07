require_relative '../config/environment.rb'
require "pry"

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

charlie = Student.new("Charlie")
mina = Student.new("Mina")

daniel = Instructor.new("dan")
anderson = Instructor.new("anderson")

pass1 = BoatingTest.new(charlie, "steering", "passed", daniel)
pass2 = BoatingTest.new(mina, "stopping", "passed", anderson)
fail3 = BoatingTest.new(charlie, "steering", "failed", daniel)
fail4 = BoatingTest.new(mina, "stopping", "failed", anderson)

binding.pry

0 #leave this here to ensure binding.pry isn't the last line

