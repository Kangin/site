require 'spec_helper'

describe "LayoutLinks" do
  describe "GET /layout_links" do
    it "should have the right page at '/'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get '/'
      response.should have_selector('title', :content => "Home")
    end
    
    it "should have the right page at /contact" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get '/contact'
      response.should have_selector('title', :content => "Contact")
    end
    
    it "should have the right page at /about" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get '/about'
      response.should have_selector('title', :content => "About")
    end
    
    it "should have the right page at /help" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get '/help'
      response.should have_selector('title', :content => "Help")
    end
    
    it "should have the right page at /signup" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get '/signup'
      response.should have_selector('title', :content => "Sign up")
    end
    
  end
end
