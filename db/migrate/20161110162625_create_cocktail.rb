class CreateCocktail < ActiveRecord::Migration[5.0]
  def change
    create_table :cocktails do |t|
      t.text :name
    end
  end
end
