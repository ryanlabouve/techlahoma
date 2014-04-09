class Addmeetupdatetousergroup < ActiveRecord::Migration
  def change
	change_table :usergroups do |t|
		t.string :meetupdate
	end
  end
end
