module Errors
  class Error < StandardError
    def status
      500
    end

    def message
      'Internal Server Error'
    end

    def to_hash
      {
        meta: {
          code: status,
          message: message
        }
      }
    end

    def to_json(*)
      to_hash.to_json
    end
  end
end