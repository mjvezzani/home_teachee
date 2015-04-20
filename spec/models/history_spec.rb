require 'spec_helper'

describe History do

  it 'is valid with the presence of a visit_summary' do
    expect(build(:history)).to be_valid
  end

  it 'is invalid when no visit_summary is present' do
    expect(build(:history, visit_summary: nil)).to have(2).errors_on(:visit_summary)
  end

  it 'is invalid when visit_summary is less than 20 characters long' do
    expect(build(:history, visit_summary: "#{'a'*19}")).to have(1).error_on(:visit_summary)
  end

end
