# code here!

class School

    attr_reader :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade_num)
        @roster[grade_num]
    end

    def sort
        sorted = {}
        @roster.each do |grade, students|
            sorted[grade] = students.sort {|a,b| a<=>b}
        end
        sorted
    end
end