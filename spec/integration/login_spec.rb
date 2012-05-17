# -*- encoding: utf-8 -*-
require "spec_helper"

describe "Login" do

  context "with valid credentials" do
    let!(:user) {users (:filipe_user)}

    before do
      visit "/"
      click_link "Sign in"

      fill_in "E-mail", :with => user.email
      fill_in "Password", :with => "1234"
      click_button "Login"
    end

    it "redirects to home page" do
      current_path.should eql (root_path)
    end

  end

end