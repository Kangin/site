# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "Users" do

  describe "une inscription" do

    describe "ratée" do

      it "ne devrait pas créer un nouvel utilisateur" do
        visit signup_path
        fill_in "name",          :with => ""
        fill_in "email",        :with => ""
        fill_in "password",     :with => ""
        fill_in "password confirmation", :with => ""
        click_button
        response.should render_template('users/new')
        response.should have_selector("div#error_explanation")
      end
     end 
      describe "réussie" do

      it "devrait créer un nouvel utilisateur" do
        lambda do
          visit signup_path
          fill_in "name", :with => "Example User"
          fill_in "email", :with => "user@example.com"
          fill_in "password", :with => "foobar"
          fill_in "password confirmation", :with => "foobar"
          click_button
          response.should have_selector("div.flash.success",
                                        :content => "Bienvenue")
          response.should render_template('users/show')
        end.should change(User, :count).by(1)
      end 
    end
  end
end