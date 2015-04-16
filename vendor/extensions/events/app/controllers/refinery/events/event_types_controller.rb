module Refinery
  module Events
    class EventTypesController < ::ApplicationController

      before_action :find_all_event_types
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @event_type in the line below:
        present(@page)
      end

      def show
        @event_type = EventType.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @event_type in the line below:
        present(@page)
      end

    protected

      def find_all_event_types
        @event_types = EventType.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/event_types").first
      end

    end
  end
end
