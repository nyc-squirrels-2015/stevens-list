require 'rails_helper'

describe Category, type: :model do

  it "won't save without a name" do
    cat = FactoryGirl.build(:category, name:nil)
    expect{cat.save}.to_not change{Category.count}
  end

end
