class AddWordToLanguages < ActiveRecord::Migration
  def change
    add_reference :languages, :word, index: true, foreign_key: true
  end
end
