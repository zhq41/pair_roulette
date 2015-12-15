require 'rails_helper'

RSpec.describe "pairs/show", type: :view do
  before(:each) do
    @pair = assign(:pair, Pair.create!(
      :members => "Members",
      :details => "Details"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Members/)
    expect(rendered).to match(/Details/)
  end
end
