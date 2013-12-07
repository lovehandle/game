class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :title
      t.text :description
      t.references :challenge, index: true

      t.timestamps
    end
  end
end
