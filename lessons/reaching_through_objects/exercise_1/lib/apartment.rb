class Apartment
  attr_reader :rooms
  def initialize
    @rooms = []
    @rented = false
  end

  def is_rented?
    @rented
  end

  def rent
    @rented = true
  end

  def add_room(room)
    @rooms << room
  end

  def list_rooms_by_name_alphabetically
    room_names = rooms.map do |room| 
      room.name
    end
    room_names.sort
  end

end