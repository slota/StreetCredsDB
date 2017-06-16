class CreateFreeRangers < ActiveRecord::Migration
  def change
    create_table :free_rangers do |t|
      t.string :first_name
      t.string :last_name
      t.string :description
      t.string :image_url
      t.string :unique_identifier

      t.timestamps null: false
    end
  end
end
