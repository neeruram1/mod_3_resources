require 'rails_helper'

RSpec.describe 'Delete a resource' do
  it "I can delete a resource" do

    project_related = Resource.create(title: 'project', link: 'link', category: 'Project Related', source: 'unique source', project: 'project')
    official_docs = Resource.create(title: 'official docs', link: 'link', category: 'Official Documentation', source: 'source', project: 'project')

    visit '/resources'

     within "#resource-#{project_related.id}" do
       click_on 'Delete Resource'
     end

     expect(current_path).to eq('/resources')
     expect(page).to have_content(official_docs.title)
     expect(page).to_not have_content(project_related.source)
  end
end
