require 'rest-client'
require 'json'

#get bus lines
response = RestClient.get('http://www.poatransporte.com.br/php/facades/process.php?a=nc&p=%&t=o')

bus_lines = JSON.parse(response.body)

index_bus = 0
bus_line = bus_lines[index_bus]
while index_bus < 10 do
    bus = BusLine.find_or_create_by(id_line: bus_line['id'], code: bus_line['codigo'], name: bus_line['nome'])
    puts bus.code
    
    response = RestClient.get('http://www.poatransporte.com.br/php/facades/process.php?a=il&p=' + bus.id_line.to_s)
    itineraries = JSON.parse(response.body)

    index_itinerary = 0
    itinerary = itineraries[index_itinerary.to_s]
    while itinerary != nil do
        it = Itinerary.find_or_create_by(latitude: itinerary['lat'], longuitude: itinerary['lng'])
        bus.itineraries << it
        index_itinerary = index_itinerary + 1
        itinerary = itineraries[index_itinerary.to_s]
    end

    puts "Bus created with code " + bus.code + " and with " + bus.itineraries.length.to_s + " itinerários."
    index_bus = index_bus + 1
    bus_line = bus_lines[index_bus]
end

