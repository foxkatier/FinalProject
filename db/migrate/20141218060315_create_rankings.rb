class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.integer :rank
      t.integer :rank_year
      t.references :subject, index: true
      t.references :journal, index: true

      t.timestamps
    end
  end
end
