class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end