class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.string :favorite
      t.string :author
      t.timestamps
    end
  end
end
