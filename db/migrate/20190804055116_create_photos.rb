# when running  rails generate model .... it creates a migration file and model file 
class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.text :caption 
      t.integer :place_id


      t.timestamps
    end
    add_index :photos, [:user_id, :photo_id]
    add_index :photos,  :photo_id
  end
end
