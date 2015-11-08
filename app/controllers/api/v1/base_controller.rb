class class Api::V1::BaseController < ApplicationController
 rescue_from Errors::Error, with: :render_error
       
    before_filter :set_default_response_format

    

    layout false

    private

    def render_error(error)
      render(json: error, status: error.status)
    end

    def set_default_response_format
      request.format = :json
    end
end
