class Direwolf
    attr_accessor :name, :home, :size, :starks_to_protect
    def initialize(name, home = 'Beyond the Wall', size = 'Massive')
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
    end

    def protects(stark)
        if self.home == stark.location
            if @starks_to_protect.count <2
                @starks_to_protect << stark
                stark.safe = true
            end
        end
    end

    def hunts_white_walkers?
        if @starks_to_protect.count == 0
            true
        else
            false
        end
    end

    def leaves(stark)
        if @starks_to_protect.include?(stark)
            index = @starks_to_protect.find_index(stark)
            @starks_to_protect.delete_at(index)
            stark.safe = false
        else
            stark
        end
    end

end

class Stark
    attr_accessor :name, :location, :safe, :house_words
    def initialize(name, location = 'Winterfell')
        @name = name
        @location = location
        @safe = false
        @house_words = "Winter is Coming"
    end

    def safe?
        @safe
    end
end