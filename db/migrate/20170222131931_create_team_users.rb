class CreateTeamUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :team_users do |t|
      t.belongs_to :team, index: true, null: false
      t.belongs_to :user, index: true, null: false
  	end

    add_index :team_users, [:team_id, :user_id], unique: true
  end

  def down
    drop_table :team_users
  end
end
