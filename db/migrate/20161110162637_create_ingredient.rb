class CreateIngredient < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.text :name
    end
  end
end
