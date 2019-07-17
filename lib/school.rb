
class School
    attr_accessor :roster

    def initialize(foo)
        @roster = {}
    end

    def add_student(student,grade)
        if !!!@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << student
    end

    def grade(number)
        return @roster[number]
    end

    def sort
        output = {}
        12.times do |i|
            if !!@roster[i]
                list = @roster[i]
                output[i] = list.sort
            end
        end
        return output
    end
end

moo = School.new("D")
moo.roster = {9 => ["Homer Simpson"], 10 => ["Jeff Baird", "Avi Flombaum"], 7 => ["Blake Johnson"]}
moo.grade("Homer Simpson")