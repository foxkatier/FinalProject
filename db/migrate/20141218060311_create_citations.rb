class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.integer :article_cited
      t.integer :article_referencing

      t.timestamps
    end
  end
end
