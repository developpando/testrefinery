module Refinery
  module Events
    class Event < Refinery::Core::BaseModel
      self.table_name = 'refinery_events'


      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
      belongs_to :event_type
      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
