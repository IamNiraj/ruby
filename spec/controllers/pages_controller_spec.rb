require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  describe "Home Page" do
    it "returns http success" do
      get :home
      expect(response).to be_success
    end
  end

  describe "contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_title ("FoodDeivery")
    end
  end

  describe "about" do
    it "returns http success" do
      get :about
      expect(response).to be_success
    end
  end
end
