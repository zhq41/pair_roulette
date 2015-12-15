require 'rails_helper'

RSpec.describe "pairs/new", type: :view do
  before(:each) do
    assign(:pair, Pair.new(
      :members => "MyString",
      :details => "MyString"
    ))
  end

  it "renders new pair form" do
    render

    assert_select "form[action=?][method=?]", pairs_path, "post" do

      assert_select "input#pair_members[name=?]", "pair[members]"

      assert_select "input#pair_details[name=?]", "pair[details]"
    end
  end
end
