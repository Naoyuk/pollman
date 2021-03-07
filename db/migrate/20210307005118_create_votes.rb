class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :votes do |t|
      t.string :title
      t.timestamp :deadline

      t.timestamps
    end
  end
end
