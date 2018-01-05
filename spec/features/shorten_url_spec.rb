require "rails_helper"

RSpec.feature "Shorten Url", :type => :feature do

  scenario "User adds a new url, and it is shortened" do
    visit '/'
    fill_in "url[original_url]", :with => 'https://www.youtube.com/watch?v=ksU9MMU586U'
    click_button "Shorten!"
    expect(page).to have_text("Your url was submitted")
  end

  scenario "Urls are properly unshortened and redirected" do
    # holding off on this for now because of complications
    # redirecting to an external url with capybara

    # @url = FactoryGirl.create(:url)
    # visit redirect_url(@url.id)
    # expect(page).to have_text("youtube")

  end

end
