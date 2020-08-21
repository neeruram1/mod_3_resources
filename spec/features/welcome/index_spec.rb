require 'rails_helper'

RSpec.describe 'Welcome Page' do
  it "I see a welcome page with a welcome message with a brief description of the website" do
    visit '/'

    welcome_message = "A site for current Turing Mod 3 students to catalog helpful articles and resources"

    expect(page).to have_content("Mod 3 Resources")
    expect(page).to have_content(welcome_message)
  end
end
