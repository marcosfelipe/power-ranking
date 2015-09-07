json.array!(@results) do |result|
  json.extract! result, :id, :team_id, :description, :date, :state, :points
  json.url result_url(result, format: :json)
end
