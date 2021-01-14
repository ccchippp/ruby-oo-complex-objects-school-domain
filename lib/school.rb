require "pry"

class School
    
    attr_accessor :roster
    
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end
    
    def add_student(student_name, student_grade)
        @roster[student_grade] ||= []
        @roster[student_grade] << student_name
    end
    
    def grade(num)
        @roster[num]
    end 

    def sort
        @roster.keys.sort
    end
end