class RemoveParticipationsReferences < ActiveRecord::Migration[6.1]
  def change
    remove_reference :messages, :participant, index: true, foreign_key: true
    remove_reference :posts, :participant, index: true, foreign_key: true
  end
end
