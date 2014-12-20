require 'rails_helper'

describe Auction, :type => :model do
  it "properly gets all russian realms to auctions" do
    Auction.get_realms

    expect(Auction.count).to eq(20)
  end
end
