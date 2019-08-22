# code here!'

class School
	attr_accessor :roster, :name, :grade 
	attr_reader :domain 
  
  def initialize(domain)
    @domain = domain
    @roster = {}
  end

  def add_student(student_name, grades)
    if !!@roster[grades] == true
      @roster[grades] << student_name
    else
      @roster[grades] = []
      @roster[grades] << student_name
    end
  end
 
  def grade(number)
    @roster[number]
  end
  
  def sort
    @roster.each{|key, name| @roster[key] = name.sort}
  end
end

