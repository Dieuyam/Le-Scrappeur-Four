








#########################################################################################################################################
######################################################################################################################################
DEUXIME PROGRAMME


require 'rubygems'
require 'nokogiri'
#require 'rubysl-open-uri'
require 'open-uri'
require 'pry'
#require 'restclient'
   
#page_1 = Nokogiri::HTML(open("http://en.wikipedia.org/"))   
#puts page_1.class   # => Nokogiri::HTML::Document


#Exo wikiepedia




def get_townhall_email(townhall_url) ##récupère l'email d'une mairie
	page = Nokogiri::HTML(open(townhall_url))
	mairie_email=page.xpath('//tbody/tr[4]/td[2]')[0].text 
	#mairie_email=page.css('td')[7].text # 2ème méthodel'adresse mail est le septième élément de la classe mail
	puts mairie_email
	return mairie_email
end



=begin
page_2= Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
mairie_site_url=page_2.css('a.lientxt')[0]["href"].tr('.','') #affiche ./95/ableiges.html
mairie_site_url= "https://www.annuaire-des-mairies.com"+mairie_site_url+"" #concaténation avec l'URL principal
mairie_site_lien=[]
#binding.pry
puts page_2.css('a.lientxt')["href"]

=end

#def perform

#get_townhall_email("https://www.annuaire-des-mairies.com/95/ableiges.html")


#end

#perform

def get_townhall_urls
page_2= Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
mairie_site_url = page_2.css('a.lientxt')
	mairie_site_lien=[]
	mairie_nom=[]
	mairie_site_url.size.times do |i|
	mairie_site_lien << "https://www.annuaire-des-mairies.com"+mairie_site_url[i]["href"].sub('.','')
	mairie_nom<<mairie_site_url[i].text 
	#binding.pry

	end

#puts mairie_site_lien
return mairie_site_lien

end



def perform
mairie_site_lien=get_townhall_urls
puts mairie_site_lien[0]
binding.pry
get_townhall_email("https://www.annuaire-des-mairies.com/95/ableiges.html")

get_townhall_email ('"'+mairie_site_lien[0]+'"')
=begin
puts mairie_site_lien[0]
puts mairie_site_lien.size
get_townhall_email("mairie_site_lien[0]")
binding.pry
maire_email_list=[]


get_townhall_email(mairie_site_lien[0])

mairie_site_lien.size.times do |i|
maire_email_list<<get_townhall_email(mairie_site_lien[i])

end

=end


end 

perform




########################################################################################################################################
######################################################################################################################################
