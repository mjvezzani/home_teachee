require 'spec_helper'

describe Address do

#   before :each do
#     @address = Address.create(street_number: '7 Foobar Way', city: 'Foobaropolis', state: 'Barfoonia', zipcode: '77777')
#   end

  # Validation tests

  it 'is valid with a street_number, city, state, and zipcode' do
    expect(build(:address)).to be_valid 
  end

  it 'is not valid with no street_number' do
    expect(build(:address, street_number: nil)).to have(1).error_on(:street_number)
  end

  it 'is not valid with no city' do
    expect(build(:address, city: nil)).to have(1).error_on(:city)
  end

  it 'is not valid with no state' do
    expect(build(:address, state: nil)).to have(1).error_on(:state)
  end

  it 'is not valid with no zipcode' do
    expect(build(:address, zipcode: nil)).to have(1).error_on(:zipcode)
  end

  # Instance method tests

end
