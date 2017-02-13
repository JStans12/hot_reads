class Read < ApplicationRecord

  # THIS IS HORRIBLE BUT TOMORROW IS VALENTINES DAY
  # AND THATS TAKING PRIORITY
  def self.in_last_day
    where(created_at: (Time.now - 24.hours)..Time.now)
    .group_by { |read| read.url }
    .reduce({}) do |result, url|
      result[url[0]] = url[1].length
      result
    end
    .sort_by { |k,v| v }
    .reverse
    .first(10)
  end
end
