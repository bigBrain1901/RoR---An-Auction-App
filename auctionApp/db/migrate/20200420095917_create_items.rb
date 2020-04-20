class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false, index:true, unique: true
      t.text :desc, null: false
      t.column :starting_bid, :bigint, null: false
      t.datetime :deadline, null: false
      t.string :image, null: false
      t.column :current_bid, :bigint, null: false
      t.column :creator_id, :bigint
      t.column :highest_bidder, :bigint

      t.timestamps
    end
    add_foreign_key :items, :users, column: :creator_id, dependent: :destroy
    add_foreign_key :items, :users, column: :highest_bidder, dependent: :nullify
  end
end
