class Pirate
    attr_reader :name, :job, :cursed, :booty
    def initialize(name, job = 'Scallywag')
        @name = name
        @job = job
        @cursed = false
        @booty = 0
        @heinous_acts = 0
    end

    def commit_heinous_act
        @heinous_acts += 1
    end

    def cursed?
        if @heinous_acts >= 3
            true
        else
            false
        end
    end

    def rob_ship
        @booty += 100
    end
end
