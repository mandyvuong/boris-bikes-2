require "DockingStation.rb"

describe DockingStation do
  it 'contains a DockingStation class' do
    expect dockingstation = DockingStation.new
  end
  it {is_expected.to respond_to :release_bike }
end