class CreatePets < ActiveRecord::Migration[7.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :breed

      t.timestamps
    end
  end
end
