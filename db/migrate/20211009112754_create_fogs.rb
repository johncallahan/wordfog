class CreateFogs < ActiveRecord::Migration[6.0]
  def change
    create_table :fogs do |t|
      t.string :name
      t.text :words

      t.timestamps
    end
  end
end
