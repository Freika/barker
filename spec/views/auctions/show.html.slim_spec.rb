require 'rails_helper'

RSpec.describe "auctions/show", :type => :view do
  before(:each) do
    @auction = assign(:auction, Auction.create!(
      :realm => "Realm",
      :slug => "Slug"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Realm/)
    expect(rendered).to match(/Slug/)
  end
end
