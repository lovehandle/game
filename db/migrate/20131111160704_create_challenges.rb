class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :description
      t.references :venue, index: true

      t.timestamps
    end
  end
end
