class Api::V1::UnixtimeController < ApplicationController
  def year
    unix_time = params[:time]
    year_array = []
    unix_time.each do |time|
      year_array << Time.at(time).year
    end
    puts year_array
  end
end
