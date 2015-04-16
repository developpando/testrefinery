# This migration comes from refinery_events (originally 2)
class CreateEventsEventTypes < ActiveRecord::Migration

  def up
    create_table :refinery_events_event_types do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-events"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/events/event_types"})
    end

    drop_table :refinery_events_event_types

  end

end
