require 'spec_helper'

describe ContactInfo do

  it 'is valid with an email, phone1, and phone2' do
    expect(build(:contact_info)).to be_valid
  end

  it 'is not valid without an email' do
    expect(build(:contact_info, email: nil)).to have(2).error_on(:email)
  end

  it 'is not valid with an improperly formatted email' do
    expect(build(:contact_info, email: 'foobarbaz.com')).to have(1).error_on(:email)
  end

  it 'is not valid with no phone numbers' do
    expect(build(:contact_info, phone1: nil)).to have(1).error_on(:phone1)
  end

  it 'is not valid without an associated address'

end
