module ApplicationHelper
  def res(json, code, status, errors=[ ])
    json.code code
		json.status status
		json.payload do
			yield if block_given?
		end
		json.errors errors
	end
end
