class CreateSmoothieIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :smoothie_ingredients do |t|
      t.references :smoothie
      t.references :ingredient

      t.timestamps
    end
  end
end
