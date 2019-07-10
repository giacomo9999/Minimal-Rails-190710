class CreateFruits < ActiveRecord::Migration[5.2]
  def change
    create_table :fruits do |t|
      t.string :color
      t.string :shape

      t.timestamps
    end
  end
end
