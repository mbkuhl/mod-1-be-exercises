class Werewolf
    attr_reader :name, :location
    def initialize(name, location = nil)
        @name = name
        @location = location
        @human = true
        @wolf = false
        @hungry = false
    end

    def human?
        @human
    end

    def wolf?
        @wolf
    end

    def hungry?
        @hungry
    end

    def change!
        if self.human?
            @human = false
            @wolf = true
            @hungry = true
        else
            @human = true
            @wolf = false
        end
    end

    def eat(person)
        if self.wolf?
            person.status = :dead
            @hungry = false
        end
    end


end