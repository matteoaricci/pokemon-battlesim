class CreateMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :power, default: :null
      t.integer :accuracy, default: :null
      t.string :move_type
      t.integer :power_points
      t.integer :priority
      t.string :damage_class
      t.integer :effect_chance
      t.timestamps
    end
  end
end
