require('pry-byebug')
require_relative('../models/student')
require_relative('../models/houses')

Student.delete_all()
House.delete_all()

house1 = House.new({
  "name" => "Gryfindor",
  "logo" => "http://goo.gl/h7KzbS"
  })
house1.save

house2 = House.new({
  "name" => "Hufflepuff",
  "logo" => "http://goo.gl/qsUqcz"
  })
house2.save


house3 = House.new({
  "name" => "Ravenclaw",
  "logo" => "http://goo.gl/Pk75Kq"
  })
house3.save

house4 = House.new({
  "name" => "Slytherin",
  "logo" => "http://goo.gl/y579Jq"
  })
house4.save

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => house1.name,
  "age" => 11
  })
student1.save

student2 = Student.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "house" => house1.name,
  "age" => 11
  })
student2.save

student3 = Student.new({
  "first_name" => "Hermoine",
  "last_name" => "Granger",
  "house" => house1.name,
  "age" => 12
  })
student3.save

student4 = Student.new({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house" => house4.name,
  "age" => 12
  })
student4.save

student5 = Student.new({
  "first_name" => "Luna",
  "last_name" => "Lovegood",
  "house" => house2.name,
  "age" => 13
  })
student5.save


# student5.delete

binding.pry
nil
