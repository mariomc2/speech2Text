class CreateHablas < ActiveRecord::Migration[5.0]
  def change
    create_table :hablas do |t|
      t.text :message

      t.timestamps
    end
  end
end
