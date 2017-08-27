require 'rails_helper'
require 'spec_helper'

RSpec.describe "page title test", type: :feature do

  before(:all) do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  it "displays the correct title in the title bar for the help page" do
    visit 'static_pages/help'
    expect(page).to have_title "Help | #{@base_title}"
  end

  it "displays the correct title in the title bar for the about page" do
    visit 'static_pages/about'
    expect(page).to have_title "About | #{@base_title}"
  end

  it "displays the correct title in the title bar for the home page" do
    visit 'static_pages/home'
    expect(page).to have_title "Home | #{@base_title}"
  end
end
