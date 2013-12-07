class Api::ApplicationController < ApplicationController
  inherit_resources
  defaults route_prefix: 'api'
  respond_to :json
end
