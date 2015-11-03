class RemoveWordFromLanguages < ActiveRecord::Migration
  def change
    remove_column :languages, :word, :string
  end
end
