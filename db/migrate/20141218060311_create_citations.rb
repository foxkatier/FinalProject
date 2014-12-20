class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.references :article_cited
      t.references :article_referencing

      t.timestamps
    end
  end
end
