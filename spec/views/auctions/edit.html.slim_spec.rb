require 'rails_helper'

RSpec.describe "auctions/edit", :type => :view do
  before(:each) do
    @auction = assign(:auction, Auction.create!(
      :realm => "MyString",
      :slug => "MyString"
    ))
  end

  it "renders the edit auction form" do
    render

    assert_select "form[action=?][method=?]", auction_path(@auction), "post" do

      assert_select "input#auction_realm[name=?]", "auction[realm]"

      assert_select "input#auction_slug[name=?]", "auction[slug]"
    end
  end
end
