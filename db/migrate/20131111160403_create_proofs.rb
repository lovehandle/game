class CreateProofs < ActiveRecord::Migration
  def change
    create_table :proofs do |t|
      t.text :caption 
      t.string :state, default: Proof::DEFAULT_STATE
      t.references :attempt, index: true

      t.timestamps
    end
  end
end
