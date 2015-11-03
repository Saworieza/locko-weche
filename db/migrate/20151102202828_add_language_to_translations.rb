class AddLanguageToTranslations < ActiveRecord::Migration
  def change
    add_reference :translations, :language, index: true, foreign_key: true
  end
end
