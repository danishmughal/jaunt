json.array!(@tripitems) do |tripitem|
  json.extract! tripitem, :trip_id, :description, :location, :start_time, :end_time
  json.url tripitem_url(tripitem, format: :json)
end
