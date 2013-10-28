class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.references :video, index: true
      t.references :policy, index: true
      t.references :country, index: true

      t.timestamps
    end
  end
end
