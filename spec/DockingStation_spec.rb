

require "DockingStation.rb"

describe DockingStation do
  
  describe '#release_bike' do
    it 'raise an error when there are no bikes available' do
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
