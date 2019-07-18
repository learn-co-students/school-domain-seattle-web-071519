class School
    attr_reader
    attr_accessor :name, :grade, :roster
    def initialize(name)
        @name=name
        #roster will be key int and array value
        @roster={}
    end

    def add_student(name, grade)
    #reminder syntax to add key value pairs:
    #hash[key]= value
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort()
     # reminder syntax on sorting by
     # only value
        emp_hash={}
        @roster.each do |grade, student|
            emp_hash[grade] ||= []
            emp_hash[grade] = student.sort {|a,b| a<=>b}
        end
        return emp_hash
    end
end

