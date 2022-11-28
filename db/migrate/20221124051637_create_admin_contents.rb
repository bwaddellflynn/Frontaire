class CreateAdminContents < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_contents do |t|
      t.string :header
      t.text :content

      t.timestamps
    end
  end
end
