class Wizard
    attr_reader :name
    def initialize(name, bearded = true)
        @name = name
        @bearded = bearded
        @spell_slots = 3
    end

    def bearded?
        if @bearded == true
            true
        else
            false
        end
    end

    def incantation(string)
        "sudo #{string}"
    end

    def cast
        @spell_slots -= 1
        "MAGIC MISSILE"
    end

    def rested?
        if @spell_slots >0
            true
        else
            false
        end
    end

end

