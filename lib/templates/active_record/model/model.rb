<% module_namespacing do -%>
class <%= class_name %> < <%= parent_class_name.classify %>

  # Autocode: Relationships
<% attributes.select(&:reference?).each do |attribute| -%>
  belongs_to :<%= attribute.name %><%= ', polymorphic: true' if attribute.polymorphic? %><%= ', required: true' if attribute.required? %>
<% end -%>

  # Autocode: Validations

  # Autocode: Callback
<% if attributes.any?(&:password_digest?) -%>
  has_secure_password
<% end -%>

	# File Upload

	# Soft Destroy
end
<% end -%>
