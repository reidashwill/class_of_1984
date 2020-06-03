require 'rails_helper'


describe Item do
  it "has a name" do
    # location = FactoryBot.create(:location)
    item = FactoryBot.create(:item)
    item.name.should eq 'switchblade'
  end
end