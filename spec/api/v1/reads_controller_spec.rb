require 'rails_helper'

describe Api::V1::ReadsController do
  context "create" do
    it "creates a read and renders it in json" do

      post api_v1_reads_path, headers: {'HTTP_URL': "garbage"}

      expect(Read.first.url).to eq("garbage")
    end
  end
end
