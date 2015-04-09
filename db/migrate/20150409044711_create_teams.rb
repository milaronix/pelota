class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
    	t.string :country
	    t.string :coach
	    t.string :flag_image
	    t.string :uniform_image
	    t.text :description

      	t.timestamps null: false
    end
  end
end
