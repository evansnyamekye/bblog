# frozen_string_literal: true

# ApplicationHelper provides helper methods for views.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
