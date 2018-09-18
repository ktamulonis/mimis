require 'rails_helper'

RSpec.describe Performance, type: :model do

  it "has a valid factory" do 
    expect(create :performance).to be_valid
  end

  it "has a name" do
    expect(build :performance, name: nil).not_to be_valid
  end

  it "has a unique name" do
    performance = create :performance, name: 'Same'
    expect(build :performance, name: 'Same').not_to be_valid
  end

  it "creates an seo freindly slug" do 
    p = create :performance, name: "The Greatest Show on Earth"
    expect(p.slug).to eq('the_greatest_show_on_earth')
  end

end


