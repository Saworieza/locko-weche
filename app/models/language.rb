class Language < ActiveRecord::Base
    has_many :words
    belongs_to :translation
end
