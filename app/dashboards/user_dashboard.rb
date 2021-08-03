require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    posts: Field::HasMany,
    id: Field::Number,
    email: Field::String.with_options(searchable: true ),
    encrypted_password: Field::String,
    first_name: Field::String,
    last_name: Field::String,
    type: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    posts
    id
    email
    type
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    posts
    id
    email
    first_name
    last_name
    type
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    posts
    email
    encrypted_password
    first_name
    last_name
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
