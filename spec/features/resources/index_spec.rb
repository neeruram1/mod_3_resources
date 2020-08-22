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
    select("#{category}", :from => "Category")
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

  it "I can submit a resource with an associated project" do
    visit '/'

    title = 'Why I do not use instance variables in my Ruby classes anymore?'
    url = 'https://womanonrails.com/instance-variables'
    category = 'Ruby'
    website = 'Woman On Rails'
    project = 'Viewing Party'

    fill_in "Title", with: title
    fill_in 'URL', with: url
    select("#{category}", :from => "Category")
    fill_in 'Website Name', with: website
    fill_in 'Related Project (if applicable)', with: project

    click_on 'Submit Your Findings'

    expect(current_path).to eq('/resources')
    expect(page).to have_content("#{project}")
  end

  it "I cannot submit a resource with required fields incomplete" do
    visit '/'

    click_on 'Submit Your Findings'

    expect(current_path).to eq('/')
    expect(page).to have_content("Title is required, Link is required, Category is required, and Source is required")
  end

  it "Groups resources by category" do
    project_related = Resource.create(title: 'project', link: 'link', category: 'Project Related', source: 'source', project: 'project')
    official_docs = Resource.create(title: 'official docs', link: 'link', category: 'Official Documentation', source: 'source', project: 'project')
    tools = Resource.create(title: 'tools', link: 'link', category: 'Tools', source: 'source', project: 'project')
    misc = Resource.create(title: 'misc', link: 'link', category: 'Miscellaneous', source: 'source', project: 'project')
    rails = Resource.create(title: 'rails', link: 'link', category: 'Rails', source: 'source', project: 'project')
    ruby = Resource.create(title: 'ruby', link: 'link', category: 'Ruby', source: 'source', project: 'project')
    apis = Resource.create(title: 'apis', link: 'link', category: 'APIs', source: 'source', project: 'project')
    active_record = Resource.create(title: 'active record', link: 'link', category: 'ActiveRecord', source: 'source', project: 'project')

    visit '/resources'

    within '.project-related' do
      expect(page).to have_content(project_related.title)
    end

    within '.official-docs' do
      expect(page).to have_content(official_docs.title)
    end

    within '.tools' do
      expect(page).to have_content(tools.title)
    end

    within '.misc' do
      expect(page).to have_content(misc.title)
    end

    within '.rails' do
      expect(page).to have_content(rails.title)
    end

    within '.ruby' do
      expect(page).to have_content(ruby.title)
    end

    within '.apis' do
      expect(page).to have_content(apis.title)
    end

    within '.active-record' do
      expect(page).to have_content(active_record.title)
    end
  end
end
