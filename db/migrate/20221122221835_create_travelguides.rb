class CreateTravelguides < ActiveRecord::Migration[7.0]
  def change
    create_table :travelguides, :id => false do |t|
      t.primary_key :blog_id
      t.integer :admin_id
      t.string :blog_title
      t.string :blog_desc
      t.text :blog_content
      t.datetime :date_published

      t.timestamps
    end
  end
end
