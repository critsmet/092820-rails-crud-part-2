class CreateKombuchas < ActiveRecord::Migration[6.0]
  def change
    create_table :kombuchas do |t|
      t.string :flavor
      t.integer :brew_time
      t.text :notes

      t.timestamps
    end
  end
end
