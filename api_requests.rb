# require 'net/http'
# require 'json'

# url = URI("https://api.thecatapi.com/v1/images/search?limit=10")  
# response = Net::HTTP.get(url)   # 1) Send request, 2) Get response
# data = JSON.parse(response)     # 3) Parse the JSON
# pp data



require 'net/http'
require 'json'

url = URI("https://pokeapi.co/api/v2/pokemon/pikachu")
response = Net::HTTP.get(url)
data = JSON.parse(response)

# puts "Name:     #{data['name']}"
# puts "ID:       #{data['id']}"
# puts "Base Exp: #{data['base_experience']}"


pp data["moves"][0]





