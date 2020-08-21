require 'rails_helper'

RSpec.describe 'Welcome Page' do
  it "I see a welcome page with a welcome message with a brief description of the website" do
    visit '/'

    welcome_message = "A site for current Turing Mod 3 students to catalog helpful articles and resources"

    expect(page).to have_content("Resourcefulness")
    expect(page).to have_content(welcome_message)
  end

  it "I see a form to create a resource" do
    visit '/'

    expect(page).to have_content('Add a Helpful Resource!')
    expect(page).to have_link('Submit Your Findings')
  end
end
