class Translation < ActiveRecord::Base
    #so that when a translation is deleted all its related englishes and languages are deleted
    has_many :englishes, dependent: :destroy
    has_many :languages, dependent: :destroy
    
    accepts_nested_attributes_for :englishes
    accepts_nested_attributes_for :languages
end
