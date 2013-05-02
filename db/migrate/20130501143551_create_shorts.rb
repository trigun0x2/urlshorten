class CreateShorts < ActiveRecord::Migration
  def change
    create_table :shorts do |t|
      t.string :url
      t.integer :visits
      t.string :shorturl
      t.timestamps
    end
  end
end
