class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia do |t|
    	t.string :name
    	t.string :city
    	t.timestamps :d_construct
    	t.integer :capacity
    	t.string :photo_url
      t.timestamps null: false
    end
  end
end
