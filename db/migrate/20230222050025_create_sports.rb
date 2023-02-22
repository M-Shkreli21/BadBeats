class CreateSports < ActiveRecord::Migration[6.1]
  def change
    create_table :sports do |t|
      t.string :sport_name
      t.string :league_name

      t.timestamps
    end
  end
end
