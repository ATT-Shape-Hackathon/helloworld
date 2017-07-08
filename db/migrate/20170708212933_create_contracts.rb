class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.string :name
      t.integer :contractor, index: true, foreign_key: true
      t.integer :contractee, index: true, foreign_key: true
      t.decimal :value

      t.timestamps
    end
  end
end
