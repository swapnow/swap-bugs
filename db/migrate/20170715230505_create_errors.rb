class CreateErrors < ActiveRecord::Migration[5.0]
  def change
    create_table :errors do |t|
      t.string :component
      t.integer :code
      t.string :body
      t.boolean :resolved, default: false

      t.timestamps
    end
  end
end
