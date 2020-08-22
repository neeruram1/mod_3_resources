require 'rails_helper'

RSpec.describe 'Navigation bar' do
  it "I see a navigation bar on all pages" do
    visit '/'
    expect(page).to have_link 'Home'
    expect(page).to have_link 'Resources'

    visit '/resources'
    expect(page).to have_link 'Home'
    expect(page).to have_link 'Resources'
  end
end
