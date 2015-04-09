class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :date
	  t.references :phase, index: true, foreign_key: true
	  t.string :status
	  t.belongs_to :local_team, index: true, foreign_key: true
	  t.belongs_to :visitor_team, index: true, foreign_key: true
	  t.integer :local_score
	  t.integer :visitor_score
	  t.belongs_to :winner, index: true, foreign_key: true
	  t.belongs_to :loser, index: true, foreign_key: true
	  t.boolean :tie
	  t.belongs_to :group, index: true, foreign_key: true
	  t.belongs_to :stadium, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
