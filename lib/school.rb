class School

    attr_accessor :school_name, :grade, :roster, :student_name

    def initialize(school_name) 
        @school_name = school_name
        @roster = {}
    end 

    # def roster
    #     @roster 
    # end 

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
      
    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort
        sortedroster = {}
        @roster.each do |grade, student_name|
        sortedroster[grade] = student_name.sort {|a,b| a <=> b}
        end 
        sortedroster
    end 

end 
