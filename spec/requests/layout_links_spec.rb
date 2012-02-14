# -*- encoding : utf-8 -*-
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
    
    it "has the right link here" do
      visit root_path
      click_link "About"
      response.should have_selector('title', :content => "About")
      click_link "Aide"
      response.should have_selector('title', :content => "Help")
      click_link "Contact"
      response.should have_selector('title', :content => "Contact")
  end
  end
  
  describe "quand pas identifié" do
    it "doit avoir un lien de connexion" do
      visit root_path
      response.should have_selector("a", :href => signin_path,
                                         :content => "S'identifier")
    end
  end

  describe "quand identifié" do

    before(:each) do
      @user = Factory(:user)
      visit signin_path
      fill_in :email,    :with => @user.email
      fill_in "Mot de passe", :with => @user.password
      click_button
    end
    
    it "devrait avoir un lien vers le profil" do
      visit root_path
      response.should have_selector("a", :href => user_path(@user),
                                         :content => "Profil")
    end
    
    it "devrait avoir un lien de déconnxion" do
      visit root_path
      response.should have_selector("a", :href => signout_path,
                                         :content => "Déconnexion")
    end

    it "devrait avoir un lien vers le profil" 
  end
end
