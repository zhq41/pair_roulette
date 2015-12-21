require 'rails_helper'

RSpec.describe Member, type: :model do
  it "creates valid member" do
    expect(create(:member)).to be_valid
  end
end
