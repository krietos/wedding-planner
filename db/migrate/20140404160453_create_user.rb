class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :user_id
      t.integer :budget

      t.timestamps
    end

    create_table :aspects do |t|
      t.string :name
      t.integer :priority
      t.decimal :percentage
      t.integer :user_id

      t.timestamps
    end

    create_table :templates do |t|
      t.string :name
      t.decimal :percentage

      t.timestamps
    end
  end
end
