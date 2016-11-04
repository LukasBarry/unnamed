require 'application_responder'

# ApplicationController
# A controller for all application controller to inherit. Holds common behavior
# across all of them.
class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery with: :exception
end
