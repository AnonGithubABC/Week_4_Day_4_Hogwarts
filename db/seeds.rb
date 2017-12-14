require_relative ('../models/student')

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryfindor",
  "age" => 11
  })

student1.save
