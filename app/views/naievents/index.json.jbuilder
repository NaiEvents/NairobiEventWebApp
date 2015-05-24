json.array!(@naievents) do |naievent|
  json.extract! naievent, :id, :title, :location, :date
  json.url naievent_url(naievent, format: :json)
end
