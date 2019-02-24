class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :name
      t.string :description
      t.datetime :remind_me_at
      t.belongs_to :project

      t.timestamps
    end
  end
end
