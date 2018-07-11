require "httparty"


toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')

toronto_wards_json = JSON.parse(toronto_wards_response.body)

p 'list of toronto wards:'
toronto_wards_json["objects"].each {|object| p object["name"]}


ontario_representatives = HTTParty.get('https://represent.opennorth.ca/representatives')

ontario_representatives_json = JSON.parse(ontario_representatives.body)

 puts "==================="
representatives_name= ontario_representatives_json["objects"].first["name"]
city = ontario_representatives_json["objects"].first["representative_set_name"]
p "#{representatives_name} is the represent the city of #{city} "
