require "DockingStation.rb"

describe DockingStation do
  it {is_expected.to respond_to :release_bike }
  
  bike = subject.release_bike
  expect(bike).to be_working
end