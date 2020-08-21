require 'rails_helper'

RSpec.describe Resource, type: :model do
  describe 'Validations' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :link}
    it {should validate_presence_of :category}
    it {should validate_presence_of :source}
  end
end
