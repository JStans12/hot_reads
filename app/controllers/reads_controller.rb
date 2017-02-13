class ReadsController < ApplicationController

  def index
    @reads = Read.in_last_day
  end
end
