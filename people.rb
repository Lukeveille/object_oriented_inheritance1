class Person
  def initialize(name)
    @name = name
  end

  def greeting
    return "Hi, my name is #{@name}."
  end
end

class Student < Person
  def initialize(name)
    super(name)
  end

  def learn
    return "I get it!"
  end
end

class Instructor < Person
  def initialize(name)
    super(name)
  end

  def teach
    return "Everything in Ruby is an Object"
  end
end

nadia = Instructor.new("Nadia")
puts nadia.greeting

chris = Student.new("Chris")
puts chris.greeting

puts nadia.teach
puts chris.learn

# puts chris.teach  # <-- Cannot call method .teach because it does not exist in the "Student" class
# puts nadia.learn  # <-- Cannot call method .learn because it does not exist in the "Instructor" class
