class AddEventsIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :event_id, :integer
  end
end
