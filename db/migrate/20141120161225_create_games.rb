class CreateGames < ActiveRecord::Migration
  def change
    create_table do |t|
      t.references :user
      t.references :deck
      t.integer    :score

      t.timestamps
    end
  end
end
