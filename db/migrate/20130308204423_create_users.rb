class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :username
      t.string   :email
      t.string   :access_token
      t.string   :name
      t.string   :site_url
      t.string   :user_uid

      t.timestamps
    end
  end
end
