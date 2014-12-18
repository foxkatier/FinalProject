class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :author_fname
      t.string :author_lname
      t.string :author_institution

      t.timestamps
    end
  end
end
