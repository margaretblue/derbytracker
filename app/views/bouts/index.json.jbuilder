json.array!(@bouts) do |bout|
  json.extract! bout, :id, :referee_id, :league_id, :bout_date
  json.url bout_url(bout, format: :json)
end
