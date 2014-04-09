class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :user, index: true
      t.references :client, index: true
      t.references :role, index: true
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
