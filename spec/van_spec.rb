require "van"

describe Van do 

  let (:van) { Van.new(:capacity => 123) }

  it "should allow setting default capacity in initialising" do
    expect(van.capacity).to eq(123)
  end

end