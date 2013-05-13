class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :name
      t.string :permalink
      t.text :description
      t.text :notes
      t.datetime :published_at
      t.integer :position

      t.timestamps
    end
  end
end
