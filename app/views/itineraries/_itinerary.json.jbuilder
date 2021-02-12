json.extract! itinerary, :id, :latitude, :longuitude, :bus_lines_id, :created_at, :updated_at
json.url itinerary_url(itinerary, format: :json)
