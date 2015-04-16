module Refinery
  module Events
    module Admin
      class EventTypesController < ::Refinery::AdminController

        crudify :'refinery/events/event_type',
                :title_attribute => 'name'

        private

        # Only allow a trusted parameter "white list" through.
        def event_type_params
          params.require(:event_type).permit(:name)
        end
      end
    end
  end
end
