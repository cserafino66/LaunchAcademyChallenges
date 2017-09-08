class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.belongs_to :user, null: false
      t.belongs_to :project, null: false

      t.timestamps null: false
    end
  end
end
