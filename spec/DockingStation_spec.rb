

require "DockingStation.rb"

describe DockingStation do
  # it {is_expected.to respond_to :release_bike }
  # it 'releases working bikes' do
  # bike = subject.release_bike
  # expect(bike).to be_working
  # end
  
  describe '#release_bike' do
    it 'raise an error when there are no bikes available' do
      # bike = Bike.new
      # subject.dock(bike)
      # # we want to release the bike we docked
      # expect(subject.release_bike).to eq bike
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
  it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#dock' do
    it 'raises an error when full' do
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock Bike.new
      end
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
end
