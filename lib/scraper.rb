require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
  
  def get_page
    Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    #this is the code to use when you want to get data from the wesite using Nokogiri and open-uri
  end
  
  
  def get_course
    self.get_page.css(".post")
    #need to get a hang of this. but I think this is using #get_page and then passig it to .css
  end
  
  def make_course 
  
  end
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
end



