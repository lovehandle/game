class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :address
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
