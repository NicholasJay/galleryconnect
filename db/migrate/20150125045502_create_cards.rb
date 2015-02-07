class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.text :prayer
      t.text :notes
      t.references :user
      t.boolean :called
    end
  end
end
