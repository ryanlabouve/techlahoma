class CreateUsergroups < ActiveRecord::Migration
  def change
    create_table :usergroups do |t|

         t.string :name, null: false, :limit => 75
         t.string :blurb, null: false, :limit => 140
         t.string :logo_url

         t.string :location
         t.string :twitter
         t.string :email, null: false, :limit => 75
         t.string :website, null: false, :limit => 75
         t.string :facebook
         t.string :linkedin


         t.timestamps

    end
  end
end
