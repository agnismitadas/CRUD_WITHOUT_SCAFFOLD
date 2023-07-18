class CreatePens < ActiveRecord::Migration[7.0]
  def change
    create_table :pens do |t|
      t.string :name_of_company
      t.string :ink_colour
      t.integer :no_of_pens

      t.timestamps
    end
  end
end
