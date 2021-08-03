require "administrate/base_dashboard"

class AdminUserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    posts: Field::HasMany,
    id: Field::Number,
    email: Field::String,
    password: Field::String,
    remember_created_at: Field::DateTime,
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
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    posts
    id
    email
    remember_created_at
    first_name
    last_name
    type
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    email
    password
    first_name
    last_name
    type
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
