module Refinery
  module Events
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Events

      engine_name :refinery_events

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "event_types"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.events_admin_event_types_path }
          plugin.pathname = root
          plugin.menu_match = %r{refinery/events/event_types(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::EventTypes)
      end
    end
  end
end
