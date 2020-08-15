require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
  
  def self.get_page
    
  end
  
  
  def self.get_course
    
  end
  
  def self.make_course 
  
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



