class AddMessagesCountToDecisions < ActiveRecord::Migration[5.2]
  def change
    add_column :decisions, :messages_count, :integer, default: 0, null: false
  end
end
