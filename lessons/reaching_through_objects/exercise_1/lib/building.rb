class Building
  attr_reader :building_name, :building_number, :list_apartments
  def initialize( building_number, building_name)
    @building_name = building_name
    @building_number = building_number
    @list_apartments = []
  end

  def add_apartment(apartment)
    if @list_apartments.count <=3
      @list_apartments << apartment
    end
  end
end