require 'rails_helper'

RSpec.describe Resource, type: :model do
  describe 'Validations' do
    it {should validate_presence_of(:title).with_message("is required")}
    it {should validate_presence_of(:link).with_message("is required")}
    it {should validate_presence_of(:category).with_message("is required")}
    it {should validate_presence_of(:source).with_message("is required")}
  end
end
