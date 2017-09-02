require 'rails_helper'
require 'spec_helper'

RSpec.feature "Navigation Items", :type => :feature do

  before :all do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  scenario "help link navigates to correct page" do
    visit '/'
    click_on "Help"
    expect(title).to have_content "Help | #{@base_title}"
  end

  scenario "about link navigates to correct page" do
    visit '/'
    click_on "About"
    expect(title).to have_content "About | #{@base_title}"
  end

  scenario "contact link navigates to the correct page" do
    visit '/'
    click_on "Contact"
    expect(title).to have_content "Contact | #{@base_title}"
  end

  scenario "home link navigates to the correct page" do
    visit about_path
    click_on "Home"
    expect(title).to have_content "Home | #{@base_title}" 
  end
end
