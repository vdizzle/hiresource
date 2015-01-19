class InitialDatabase < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.timestamps null: false
    end

    create_table :companies do |t|
      t.string :name

      t.timestamps null: false
    end

    create_table :jobs do |t|
      t.belongs_to :company, index: true, null: false
      t.belongs_to :recruiter, index: true, null: false

      t.timestamps null: false
    end

    create_table :locations do |t|
      t.belongs_to :company, index: true, null: false
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
    end
  end
end
