require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.marthastewart.com/312598/brick-pressed-sandwich'))

search = doc.css('h1, h2')
puts search

list = doc.css('page-section-title')
