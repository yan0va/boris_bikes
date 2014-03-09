require "garage"

describe Garage do

  let(:bike) {Bike.new}
  let(:broken_bike) do
    bike = Bike.new
    bike.break
    bike
  end
  
  let(:garage) { Garage.new(:capacity => 123) }

  it "should allow setting default capacity on initialising" do
    expect(garage.capacity).to eq(123)
  end

  it "fixes the bike on arrival" do
    garage.dock(broken_bike)
    expect(broken_bike).not_to be_broken
  end

end