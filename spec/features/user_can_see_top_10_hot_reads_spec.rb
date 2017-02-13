require 'rails_helper'

describe "user navigates to index" do
  it "they see hot reads" do
    Read.create(url: "things")
    Read.create(url: "things")
    Read.create(url: "things")
    Read.create(url: "stuff")
    Read.create(url: "things")
    Read.create(url: "stuff")

    visit '/'

    expect(page).to have_content("things 4")
    expect(page).to have_content("stuff 2")
  end

  it "they dont see 11 hot reads" do
    Read.create(url: "1")
    Read.create(url: "2")
    Read.create(url: "3")
    Read.create(url: "4")
    Read.create(url: "5")
    Read.create(url: "6")
    Read.create(url: "7")
    Read.create(url: "8")
    Read.create(url: "9")
    Read.create(url: "10")
    Read.create(url: "11")

    visit '/'

    within('.reads-table') do
      expect(page).to have_xpath(".//tr", :count => 10)
    end
  end
end
