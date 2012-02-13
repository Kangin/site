# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "PagesLinks" do
  describe "GET /pages_links" do
    it "has the right link" do
      visit root_path
      click_link "Sign up now!"
      response.should have_selector('title', :content => "Sign up")
    end
  end
end
