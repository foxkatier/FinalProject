class CreateAuthorships < ActiveRecord::Migration
  def change
    create_table :authorships do |t|
      t.references :author, index: true
      t.references :article, index: true

      t.timestamps
    end
  end
end
