class RenameParticipantsIntoParticipations < ActiveRecord::Migration[6.1]
  def change
    rename_table :participants, :participations
    add_reference :messages, :participation, index: true, foreign_key: true
    add_reference :posts, :participation, index: true, foreign_key: true
    rename_column :courses, :participants_total, :total_participations
  end
end
