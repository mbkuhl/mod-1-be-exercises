class Centaur
    attr_reader :name, :breed, :stick
    def initialize(name, breed)
        @name = name
        @breed = breed
        @standing = true
        @exertion = 0
        @cranky = false
        @laying = false
        @stick = false
    end

    def shoot
        if laying? == false
            if @cranky == false
                @exertion += 1
                self.cranky?
                "Twang!!!"
            else
                "NO!"
            end
        else
            "NO!"
        end
    end

    def run
        if laying? == false
            @exertion += 1
            self.cranky?
            'Clop clop clop clop!'
        else
            "NO!"
        end
    end

    def cranky?
        if @exertion > 2
            @cranky = true
        else
            @cranky = false
        end
        @cranky
    end

    def standing?
        @standing
    end

    def lay_down
        @standing = false
        @laying = true
    end

    def laying?
        @laying
    end

    def sleep
        if self.laying? == false
            "NO!"
        else
            @exertion = 0
            @cranky = false
        end
    end

    def stand_up
        @laying = false
        @standing = true
    end

    def drink_potion
        if @standing == true
            if @exertion > 0
                @exertion = 0
            else
                @stick = true
            end
        else
            'NO!'
        end
    end

end