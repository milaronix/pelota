class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
