class Ogre
    attr_reader :name, :home, :swings, :encounter_counter
    def initialize(name, home = 'Swamp')
        @name = name
        @home = home
        @swings = 0
        @encounter_counter = 0
    end

    def encounter(human)
        if human.knocked_out == false
            @encounter_counter += 1
            human.encounter
            if human.notices_ogre? == true
                @swings += 1
            end
        else
            ogre.apologize
        end
    end

    def apologize(human)
        human.knocked_out = false
    end

    def swing_at(human)
        @swings += 1
    end

end

class Human
    attr_reader :name
    attr_accessor :knocked_out, :encounter_counter
    def initialize(name = 'Jane')
        @name = name
        @encounter_counter = 0
        @knocked_out = false

    end

    def encounter
        @encounter_counter += 1
    end

    def notices_ogre?
        if @encounter_counter % 3 == 0
            true
        else
            false
        end
    end

    def knocked_out?
        if  encounter_counter == 6
            @encounter_counter = 0
            @knocked_out = true
        else
            false
        end
    end
end