# ApplicationController
# A controller for all application controller to inherit. Holds common behavior
# across all of them.
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
