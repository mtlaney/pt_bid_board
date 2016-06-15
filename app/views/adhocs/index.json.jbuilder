json.array!(@adhocs) do |adhoc|
  json.extract! adhoc, :id, :orig, :depart, :dest, :arrive, :type_of_freight, :reason
  json.url adhoc_url(adhoc, format: :json)
end
