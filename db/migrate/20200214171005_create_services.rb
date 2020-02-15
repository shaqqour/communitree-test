class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :title
      t.string :description
      t.string :ask_offer
      t.integer :user_id
      t.integer :offer_user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
