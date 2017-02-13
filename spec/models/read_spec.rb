require 'rails_helper'

RSpec.describe Read, type: :model do
  it "can have same url" do
    Read.create(url: "stuff")
    Read.create(url: "stuff")

    expect(Read.count).to eq(2)
  end
end
