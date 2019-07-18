require "pry"
class School

attr_accessor :roster, :name

@student_hash = {}

    def initialize(roster)
        @roster = {}
        @name = name
    end

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end
# def add_student(student_name, grade)
#     if roster[grade]
#         roster[grade] << student_name
#     else 
#         roster[grade] = []
#         # roster
#     end
# end

    # def add_student(name, grade)
    #     new_student =  {grade => ["#{name}"]}
    #     roster.merge!(new_student)
    # end
    
    def grade(number_of_students)    
        roster[number_of_students]
    end
#     def grade(grade)
        
#         #returns all students in that grade

#         roster.keys = some_grade
#        if some_grade == grade
#         roster.values.flatten 
#        end
# #   binding.pry
#     end
# end

    def sort
        sorted = @roster.sort.to_h
    end
    
end