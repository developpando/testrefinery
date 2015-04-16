class AddEventTypeToRefineryEvents < ActiveRecord::Migration
  def change
    add_column :refinery_events, :event_type_id, :integer
  end
end
