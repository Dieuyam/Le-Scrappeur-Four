require 'rubygems'
require 'nokogiri'
#require 'rubysl-open-uri'
require 'open-uri'
require 'pry'
#require 'restclient'
   
#page_1 = Nokogiri::HTML(open("http://en.wikipedia.org/"))   
#puts page_1.class   # => Nokogiri::HTML::Document


#Exo wikiepedia

def crypto


page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
crypto_currency = page.css('td.text-left')
crypto_name = []
	crypto_currency.size.times do |i|
	crypto_name << crypto_currency[i].text
	end


crypto_value= page.css('a.price')
crypto_price= []
	crypto_value.size.times do |i|
	crypto_price << crypto_value[i].text
	end

puts crypto_name
puts crypto_price


symbol_hash=Hash[crypto_name.zip crypto_price]



end

crypto
print crypto




