require 'rails_helper'

RSpec.describe 'Resource index page' do
  it "Displays all resources" do
    visit '/'

    title = 'Why I do not use instance variables in my Ruby classes anymore?'
    url = 'https://womanonrails.com/instance-variables'
    category = 'Ruby'
    website = 'Woman On Rails'

    fill_in "Title", with: title
    fill_in 'URL', with: url
    fill_in 'Category', with: category
    fill_in 'Website Name', with: website

    click_on 'Submit Your Findings'

    expect(current_path).to eq('/resources')
    expect(page).to have_content("Resource Index")
    expect(page).to have_content("Thanks for being resourceful!")
    expect(page).to have_content("#{title}")
    expect(page).to have_content("#{url}")
    expect(page).to have_content("#{category}")
    expect(page).to have_content("#{website}")
  end
end
