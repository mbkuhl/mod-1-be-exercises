require './spec/spec_helper'


RSpec.describe Apartment do
  before(:each){
    @apartment = Apartment.new
  }

  describe '#initialize' do
    it 'is an apartment' do
      expect(@apartment).to be_an_instance_of(Apartment)
    end
  end

  describe '#rented?' do
    it 'can be rented' do 
      expect(@apartment.is_rented?).to be false
      @apartment.rent
      expect(@apartment.is_rented?).to be true
    end
  end

  describe '#add_room' do
    it 'can add rooms' do
      bathroom = Room.new("bathroom")
      
      @apartment.add_room(bathroom)
      laundry = Room.new("laundry")
      @apartment.add_room(laundry)
      kitchen = Room.new("kitchen")
      @apartment.add_room(kitchen)
      bedroom = Room.new("bedroom")
      @apartment.add_room(bedroom)

      expect(@apartment.rooms).to eq([bathroom, laundry, kitchen, bedroom])
    end
  end

  describe '#list_rooms_by_name_alphabetically' do
    it 'can list rooms by name alphebetically' do
      bathroom = Room.new("bathroom")

      @apartment.add_room(bathroom)
      @apartment.add_room(Room.new("laundry"))
      @apartment.add_room(Room.new("kitchen"))
      @apartment.add_room(Room.new("bedroom"))

      expect(@apartment.list_rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])
    end
  end

end
