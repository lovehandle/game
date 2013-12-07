class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.references :challenge, index: true
      t.references :player, index: true

      t.timestamps
    end
  end
end
