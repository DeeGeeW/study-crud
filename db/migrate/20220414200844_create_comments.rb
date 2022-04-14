class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :comment
      t.string :state
      t.string :bird_name
      t.string :image
      t.string :chirp

      t.timestamps
    end
  end
end
