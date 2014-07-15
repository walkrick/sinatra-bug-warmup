class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.boolean :agree_to_terms, null: false
    end
  end
end
