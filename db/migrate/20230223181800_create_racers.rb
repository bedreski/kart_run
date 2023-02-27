class CreateRacers < ActiveRecord::Migration[7.0]
  def change
    create_table :racers do |t|
      t.string :name
      t.datetime :born_at
      t.string :image_url

      t.timestamps
    end
  end
end
