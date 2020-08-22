require 'rails_helper'

RSpec.describe 'I can edit a resource' do
  it "I can edit a resource" do
    official_docs = Resource.create(title: 'official docs', link: 'link', category: 'Official Documentation', source: 'source', project: 'project')

    visit '/resources'

    within "#resource-#{official_docs.id}" do
      click_on 'Edit Resource'
    end

    expect(current_path).to eq("/resources/#{official_docs.id}/edit")

    fill_in "Title", with: "New Title"
    fill_in 'URL', with: 'url'
    select("Project Related", :from => "Category")
    fill_in 'Website Name', with: 'website'
    fill_in 'Related Project (if applicable)', with: 'project'

    click_on 'Edit Your Findings'

    expect(current_path).to eq("/resources")
    expect(page).to have_content("You've updated your resource!")

    within "#resource-#{official_docs.id}" do
      expect(page).to have_content("New Title")
      expect(page).to have_content("Project Related")
      expect(page).to_not have_content("official docs")
    end
  end

end
