class Book < ApplicationRecord
  belongs_to :author

  include PgSearch::Model

  pg_search_scope :search_by_title,
    against: [ :title, :description ],
    associated_against: {
      author: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
