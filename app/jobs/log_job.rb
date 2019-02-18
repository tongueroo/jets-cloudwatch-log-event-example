class LogJob < ApplicationJob
  log_event "/aws/lambda/hello"
  def report
    puts "event #{JSON.dump(event)}"
    puts "log_event #{JSON.dump(log_event)}"
  end
end