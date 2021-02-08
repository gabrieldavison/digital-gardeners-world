class CreateWebsites < ActiveRecord::Migration[6.0]
  def change
    create_table :websites do |t|
      t.string :title
      t.string :link
      t.string :description

      t.timestamps
    end
  end
end
