class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :rno, index: true, unique: true, null: false
      t.string :name, null: false
      t.text :pwd, null:false
      t.column :pno, :bigint, null: false

      t.timestamps
    end
  end
end
