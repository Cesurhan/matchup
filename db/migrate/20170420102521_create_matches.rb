class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.integer :match_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
