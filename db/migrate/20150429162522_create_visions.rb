class CreateVisions < ActiveRecord::Migration
  def change
    create_table :visions do |t|
      t.text :content
      t.string :image_url

      t.timestamps null: false
    end
  end
end
