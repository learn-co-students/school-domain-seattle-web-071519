# code here!
class School
    attr_accessor :roster, :schoolname, :studentname, :grade
   
    def initialize(school)
        @schoolname = schoolname
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sortedroster = {}
        @roster.each do |grade, studentname| 
            sortedroster[grade] = studentname.sort {|a,b| a<=>b} 
        end
        sortedroster
    end


    



end
