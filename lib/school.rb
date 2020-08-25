class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(year)
        @roster[year]
    end
    
    def sort
        sorted_students = {}
        @roster.each do |grade, names|
            sorted_students[grade] = names.sort
        end
        sorted_students
    end

end