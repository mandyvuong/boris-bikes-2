require "DockingStation.rb"

describe Bike do
  it 'contains a Bike class' do
    expect bike = Bike.new
  end
  it {is_expected.to respond_to :working? }
end