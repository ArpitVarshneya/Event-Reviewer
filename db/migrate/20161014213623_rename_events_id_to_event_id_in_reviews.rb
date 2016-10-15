class RenameEventsIdToEventIdInReviews < ActiveRecord::Migration[5.0]
  def up
    rename_column :reviews, :events_id, :event_id
  end

  def down
    rename_column :reviews, :event_id, :events_id
  end
end
