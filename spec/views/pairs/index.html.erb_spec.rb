require 'rails_helper'

RSpec.describe "pairs/index", type: :view do
  before(:each) do
    assign(:pairs, [
      Pair.create!(
        :members => "Members",
        :details => "Details"
      ),
      Pair.create!(
        :members => "Members",
        :details => "Details"
      )
    ])
  end

  it "renders a list of pairs" do
    render
    assert_select "tr>td", :text => "Members".to_s, :count => 2
    assert_select "tr>td", :text => "Details".to_s, :count => 2
  end
end
