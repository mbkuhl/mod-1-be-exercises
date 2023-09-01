require './spec/spec_helper'


RSpec.describe Room do
  describe '#initialize' do
    it 'has a name' do
      room = Room.new('bathroom')

      expect(room.name).to eq('bathroom')
    end
  end
end
