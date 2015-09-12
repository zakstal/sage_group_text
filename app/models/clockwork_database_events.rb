class ClockworkDatabaseEvents < ActiveRecord::Base
  belongs_to :frequency_period
  belongs_to :user, class_name: "User", foreign_key: :user_id

  # Used by clockwork to schedule how frequently this event should be run
  # Should be the intended number of seconds between executions
  def frequency
    frequency_quantity.send(frequency_period.name.pluralize)
  end
end
