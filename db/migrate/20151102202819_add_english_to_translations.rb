class AddEnglishToTranslations < ActiveRecord::Migration
  def change
    add_reference :translations, :english, index: true, foreign_key: true
  end
end
