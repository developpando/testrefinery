
FactoryGirl.define do
  factory :event_type, :class => Refinery::Events::EventType do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

