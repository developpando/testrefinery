module Refinery
  module Events
    module Admin
      class EventsController < ::Refinery::AdminController

        before_filter :find_all_event_types

        crudify :'refinery/events/event'

        private

        # Only allow a trusted parameter "white list" through.
        def event_params
          params.require(:event).permit(:title, :date, :photo_id, :blurb, :event_type_id)

        end

        def find_all_event_types
          @event_types = Refinery::Events::EventType.all
        end

      end
    end
  end
end
