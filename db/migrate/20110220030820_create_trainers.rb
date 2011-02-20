class CreateTrainers < ActiveRecord::Migration
  def self.up
    create_table :trainers do |t|
      t.string :name
      t.string :email
      t.string :priceRange
      t.string :phone
      t.string :citiesServed
      t.string :certs
      t.string :education
      t.string :specialty
      t.string :bio
      t.string :philos
      t.integer :rating
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end

  def self.down
    drop_table :trainers
  end
end
