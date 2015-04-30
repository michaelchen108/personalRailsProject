class DropMailboxer < ActiveRecord::Migration
  def change
  	drop_table :commontator_subscriptions
  	drop_table :commontator_threads
  	drop_table :mailboxer_conversation_opt_outs
  	drop_table :mailboxer_conversations
  	drop_table :mailboxer_notifications
  	drop_table :mailboxer_receipts
  end
end
