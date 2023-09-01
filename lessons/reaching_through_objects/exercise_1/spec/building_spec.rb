require './spec/spec_helper'


RSpec.describe Building do
  before(:each){
    @bldg = Building.new("623", "Savills Apartment Building")
  }

  describe '#initialize' do
    it 'is a building with attributes' do
      expect(@bldg).to be_an_instance_of(Building)
      expect(@bldg.building_number).to eq("623")
      expect(@bldg.building_name).to eq("Savills Apartment Building")
    end
  end

  describe '#add_apartment' do
    it 'can add up to 4 apartments' do
      apt_1 = Apartment.new
      apt_2 = Apartment.new
      apt_5 = Apartment.new

      @bldg.add_apartment(apt_1)
      @bldg.add_apartment(apt_2)
      @bldg.add_apartment(apt_5)

      expect(@bldg.list_apartments).to eq([apt_1, apt_2, apt_5])

      apt_3 = Apartment.new
      apt_4 = Apartment.new

      @bldg.add_apartment(apt_3)
      @bldg.add_apartment(apt_4)

      expect(@bldg.list_apartments).to eq([apt_1, apt_2, apt_5, apt_3])
    end
  end
end

