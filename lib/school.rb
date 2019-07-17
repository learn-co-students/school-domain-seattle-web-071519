require "pry"

class School
    attr_accessor :name
    attr_reader :roster
    def initialize(name)
        @name = name
        @roster = {}
    end
    def add_student(name, grade)
        if @roster.has_key? (grade)
            roster[grade] << name
        else 
            roster[grade] = []
            roster[grade] << name
        end
    end
    def grade(num)
        @roster[num]
    end

    def sort
        sorted_roster = {}
        @roster.each do |grade, students|
            sorted_students = students.sort 
            sorted_roster[grade] = sorted_students
        end
        sorted_roster
    end

end

s1 = School.new("NHHS")
s1.add_student("sally", 3)
s1.add_student("harry", 5)
s1.add_student("greg", 3)
s1.grade(3)
s1.sort