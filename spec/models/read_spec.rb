require 'rails_helper'

RSpec.describe Read, type: :model do
  it "count starts at 0" do
    read = Read.new(url: 'things' )
    expect(read.count).to eq(0)
  end
end
