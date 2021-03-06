class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.string :username, :limit => 100
      t.references :account
    end
  end

  def down
    drop_table :users
  end
end
