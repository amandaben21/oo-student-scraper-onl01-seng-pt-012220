require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    doc.css(".student-card").each do |student|
      student = []
      index_page = {
        :name => student.css("h4").text,
        :location => student.css("p").text,
        :profile_url => student.css()
      }

  end

  def self.scrape_profile_page(profile_url)
    
  end

end

