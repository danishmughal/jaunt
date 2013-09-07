json.array!(@trips) do |trip|
  json.extract! trip, :title, :description, :arrive_time, :user_id, :return_time, :destination
  json.url trip_url(trip, format: :json)
end
