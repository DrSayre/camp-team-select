class CreateDraws < ActiveRecord::Migration[5.1]
  def change
    create_table :draws do |t|
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
