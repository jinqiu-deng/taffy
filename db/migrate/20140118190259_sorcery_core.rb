class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email,             :null => false
      t.string :crypted_password,  :default => nil
      t.string :salt,              :default => nil
      t.string :first_name,        :default => nil
      t.string :last_name,         :default => nil
      t.string :type,              :default => nil
			t.string :remember_me_token, :default => nil
			t.datetime :remember_me_token_expires_at, :default => nil
      t.boolean :active
    end
  end

  def self.down
    drop_table :users
  end
end
