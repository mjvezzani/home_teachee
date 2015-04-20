require 'spec_helper'

describe HomeTeachee do

  # Validations on Data

  it 'is valid with a first_name, last_name' do
    expect(build(:home_teachee)).to be_valid
  end

  it 'is invalid without a first_name' do
    expect(build(:home_teachee, first_name: nil)).to have(1).errors_on(:first_name)
  end

  it 'is invalid without a last_name' do
    expect(build(:home_teachee, last_name: nil)).to have(1).errors_on(:last_name)
  end

  # Instance Method Tests

  it 'returns a home_teachees full name' do
    expect(build(:home_teachee).name).to eq 'Mike Vezzani'
  end

end
