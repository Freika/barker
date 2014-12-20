require 'rails_helper'

RSpec.describe "auctions/new", :type => :view do
  before(:each) do
    assign(:auction, Auction.new(
      :realm => "MyString",
      :slug => "MyString"
    ))
  end

  it "renders new auction form" do
    render

    assert_select "form[action=?][method=?]", auctions_path, "post" do

      assert_select "input#auction_realm[name=?]", "auction[realm]"

      assert_select "input#auction_slug[name=?]", "auction[slug]"
    end
  end
end
