require 'rails_helper'

RSpec.describe Pair, type: :model do
  it "create valid pair" do
    expect(create(:pair)).to be_valid
  end
end
