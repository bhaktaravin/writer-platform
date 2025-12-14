class Book < ApplicationRecord

    has_many :chapters, dependent: :destroy
    validates :cover_url, format: URI::regexp(%w[http https]), allow_blank: true
end