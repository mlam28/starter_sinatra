class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.date :birthday #YYYY/MM/DD
      t.string :favorite_food
    end
  end
end
