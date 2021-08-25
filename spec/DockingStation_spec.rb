

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
  it { is_expected.to respond_to(:bike) }

  it 'docks something' do
    bike = Bike.new
    # We want to return the bike we dock
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    # Again, we need to return the bike we just docked
    expect(subject.bike).to eq bike
  end  
  describe '#dock' do
    it 'raises an error when full' do
      subject.dock(Bike.new)
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
  describe '#dock' do
    it 'raises an error when full' do
      20.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
end
