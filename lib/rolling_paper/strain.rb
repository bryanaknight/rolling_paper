require 'faraday'
require 'json'
 
class Strain
 
  def self.all_strains 
    response = Faraday.get("http://www.leafly.com/api/strains")
    strains_json = JSON.parse(response.body)
    strains_json.collect {|strain| new (strain)}
  end
 
  def self.all_key_names
    response = Faraday.get("http://www.leafly.com/api/strains")
    strains_json = JSON.parse(response.body)
    strains_json.collect do |strain|
      strain["Key"]
    end
  end
 
  def self.find_by_key(key)
    response = Faraday.get("http://www.leafly.com/api/details/#{key}")
    strain_json = JSON.parse(response.body)
    new (strain_json)
  end
 
  def self.find_by_category(category)
    response = Faraday.get("http://www.leafly.com/api/strains?category=#{category}")
    strains_json = JSON.parse(response.body)
    strains_json.collect {|strain| new (strain)}
  end
 
  attr_reader :key, :effects, :id, :name, :category,
              :description, :symbol, :overview, :url,
              :rating, :medical_uses, :side_effects, :reviews
 
  def initialize(data)
    @key = data["Key"]
    @id = data["Id"]
    @name = data["Name"]
    @category = data["Category"]
    @description = data["Abstract"]
    @symbol = data["Symbol"]
    @overview = data["Overview"]
    @url = data["Url"]
    @rating = data["Rating"]
    @effects = data["Effects"] #returns an array of hashes for each effect
    @medical_uses = data["Medical"]
    @side_effects = data["Negative"]
    @reviews = data["Reviews"]
  end
 
end
