class Api::V1::UnixtimeController < ApplicationController
  def year
    # store the params from post request into a variable
    unix_time = params[:time]
    year_array = []
    unix_time.each do |time|
      # convert unix time to year and store into array
      year_array << Time.at(time).year
    end
    if year_array.length == 1
      # return year if only 1 unix timestap
      render json: "Only 1 timestamp received, the timestamp after conversion to year is: #{year_array}"
    else
      # find the earliest and latest date in the array and return the difference
      render json: "The difference between the earliest and the latest unix timestamp is #{year_array.minmax[1] - year_array.minmax[0]} years."
    end
  end
end
