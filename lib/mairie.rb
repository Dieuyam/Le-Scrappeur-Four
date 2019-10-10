require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

def mairie

 page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html")) #Open crypto page
   city_names = []
   city_emails = []
 	page.xpath('//td/p/a').each do |node| #récupère le X-path  asoocié au nom de la ville
    city_names << node.text
 	#print city_names
    end  



    city_names.size.times do |nod|
   	page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/#{city_names[nod].downcase.tr(" ", "-")}.html"))    
   	page.xpath('//html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node| #récupère le X-path associé à l'adresse mail
   	city_emails << node.text
   	#binding.pry
	end
 end
     
     print city_emails
     parsed_city = Hash[city_names.zip city_emails]#
     



end

mairie

print mairie





