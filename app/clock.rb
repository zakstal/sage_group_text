require 'clockwork'
require 'clockwork/database_events'
require_relative '../config/boot'
require_relative '../config/environment'

module Clockwork

  # required to enable database syncing support
  Clockwork.manager = Manager.new

  sync_database_events model: ClockworkDatabaseEvents, every: 2.minute do |model_instance|

    # do some work e.g...

    # running a DelayedJob task, where #some_action is a method
    # # you've defined on the model, which does the work you need
    model_instance.send_income_request

    # # performing some work with Sidekiq
    # YourSidekiqWorkerClass.perform_async
  end

end