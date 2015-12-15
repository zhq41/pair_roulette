require 'rails_helper'

RSpec.describe "pairs/edit", type: :view do
  before(:each) do
    @pair = assign(:pair, Pair.create!(
      :members => "MyString",
      :details => "MyString"
    ))
  end

  it "renders the edit pair form" do
    render

    assert_select "form[action=?][method=?]", pair_path(@pair), "post" do

      assert_select "input#pair_members[name=?]", "pair[members]"

      assert_select "input#pair_details[name=?]", "pair[details]"
    end
  end
end
