class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.string :name
      t.integer :contractor
      t.integer :contractee
      t.decimal :value

      t.timestamps
    end
  end
end
