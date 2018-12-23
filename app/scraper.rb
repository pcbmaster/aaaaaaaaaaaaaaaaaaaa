require 'nokogiri'
require 'rails/configuration'
require 'pry'

@ksl_url = 'https://www.ksl.com/auto/search/index?make[]=BMW&priceTo=7000&zip=84060&miles=100&transmission[]=Manual&drive[]=RWD&page=0&sort=2&perPage=96'
@vin_decoder_url = 'https://www.mdecoder.com/decode/'

#load our page and save it
system("node ./load_search_page.js")
html = File.read('assets/search_page.html')
bmw_query = Nokogiri::HTML.parse(html)
#bmw_query = @agent.get(@ksl_url) fix
puts bmw_query.body
listings = bmw_query.search('//div[contains(@class, "listing")]')
listings.each do |listing|
  puts listing
end
#binding.pry
