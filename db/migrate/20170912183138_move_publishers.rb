class MovePublishers < ActiveRecord::Migration[5.1]
  def up
    publishers_map = Book.pluck(:publisher).uniq.map do |name|
      [name, Publisher.create(name: name).id]
    end.to_h

    publishers_map.each do |publisher_name, publisher_id|
      Book.where(publisher: publisher_name).update_all(publisher_id: publisher_id)
    end
  end

  def down
    Publisher.pluck(:id, :name).each do |(id, name)|
      Book.where(publisher_id: id).update_all(publisher: name, publisher_id: nil)
    end
    Publisher.delete_all
  end
end
