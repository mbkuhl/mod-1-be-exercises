class Dragon
    attr_reader :name, :rider, :color
    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @eaten = 0
    end
    def hungry?
        if @eaten <3
            true
        else
            false
        end
    end

    def eat
        @eaten += 1
    end
end