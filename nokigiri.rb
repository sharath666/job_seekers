
require 'nokogiri'


url = "https://www.elitmus.com/jobs/32375-hummingwave-technologies-software-engineer-trainee-2018-bangalore"

doc = Nokogiri::HTML(open(url)) 

puts doc