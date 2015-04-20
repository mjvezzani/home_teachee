require 'spec_helper'

describe Issue do

  it 'is valid with a title and a description' do
    expect(build(:issue)).to be_valid
  end

  it 'is not valid without a title' do
    expect(build(:issue, title: nil)).to have(2).error_on(:title)
  end

  it 'is not valid with a title that is duplicate' do
    FactoryGirl.create(:issue, title: 'This is a title for an issue')
    issue = FactoryGirl.build(:issue, title: 'This is a title for an issue')
    
    expect(issue).to have(1).error_on(:title)
  end

  it 'is not valid with a title that is too short' do
    expect(build(:issue, title: "#{'a' * 3}")).to have(1).errors_on(:title)
  end

  it 'is not valid without a description' do
    expect(build(:issue, description: nil)).to have(2).errors_on(:description)
  end

  it 'is not valid with a description that is too short' do
    expect(build(:issue, description: "#{'a' * 10}")).to have(1).error_on(:description)
  end

end
