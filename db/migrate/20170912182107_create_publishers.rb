class CreatePublishers < ActiveRecord::Migration[5.1]
  def change
    create_table :publishers do |t|
      t.string :name, limit: 255
    end

    add_index :publishers, :name, unique: true
  end
end
