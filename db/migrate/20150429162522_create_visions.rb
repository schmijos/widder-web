class CreateVisions < ActiveRecord::Migration
  def change
    create_table :visions do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
