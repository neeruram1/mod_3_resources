class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :link
      t.string :category
      t.string :project
      t.string :source

      t.timestamps
    end
  end
end
