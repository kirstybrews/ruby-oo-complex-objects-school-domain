require 'pry'

class School

    attr_accessor :roster
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !roster[grade]
            roster[grade] = []
        end
        roster[grade] << name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_roster = {}
        @roster.each do |key, value|
            #binding.pry
            sorted_roster[key] = value.sort
        end
        sorted_roster
    end

end