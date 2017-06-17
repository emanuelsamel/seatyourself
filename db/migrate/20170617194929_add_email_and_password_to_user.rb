class AddEmailAndPasswordToUser < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.string :email
      t.string :password_digest
    end#do
  end#change
end#class 
