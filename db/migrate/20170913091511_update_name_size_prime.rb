class UpdateNameSizePrime < ActiveRecord::Migration[5.1]
  def up
    Book.pluck(:id, :name).each do |(id, name)|
      Book.where(id: id).update_all(name_size_prime: name.size.in?(Book::PRIMES))
    end
  end

  def down
    Book.update_all(name_size_prime: false)
  end
end
