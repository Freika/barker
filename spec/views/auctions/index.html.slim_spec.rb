require 'rails_helper'

RSpec.describe "auctions/index", :type => :view do
  before(:each) do
    assign(:auctions, [
      Auction.create!(
        :realm => "Realm",
        :slug => "Slug"
      ),
      Auction.create!(
        :realm => "Realm",
        :slug => "Slug"
      )
    ])
  end

  it "renders a list of auctions" do
    render
    assert_select "tr>td", :text => "Realm".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
  end
end
