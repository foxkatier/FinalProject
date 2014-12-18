class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :article_title
      t.integer :article_year
      t.references :journal, index: true

      t.timestamps
    end
  end
end
