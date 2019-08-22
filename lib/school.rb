# code here!'

class School
	attr_accessor :roster
	attr_reader :domain 
  
  def initialize(domain)
    @domain = domain
    @roster = {}
  end

  def add_student(student_name, grades)
    if !!roster[grades] == true
      roster[grades] << student_name
    else
      roster[grades] = []
      roster[grades] << student_name
    end
  end
 

#  def add_student(student_name, grade)
#    roster[grade] ||= [] 

#a ||= b is a conditional assignment operator. 
#It means if a is undefined or falsey, then evaluate b and
#set a to the result. Equivalently, if a is defined and evaluates to truthy, 
#then b is not evaluated, and no assignment takes place.

#    roster[grade] << student_name
#  end
 
  def grade(grades)
    roster[grades]
  end
  
  def sort
    roster.each{|key, name| roster[key] = name.sort}
  end
end

