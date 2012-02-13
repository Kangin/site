# -*- encoding : utf-8 -*-
module ApplicationHelper
  #return a title on a per-page basis
  
  def logo
    logo = image_tag("/images/logo.png", :alt => "Sample app", :class => "round" )
  end
  
  def title
    base_title = "Ruby on Rails, non non non non. na na na na . BLRA"
    if @title.nil?
      base_title 
    else
       "#{base_title} | #{@title}"
    end
  end
end
