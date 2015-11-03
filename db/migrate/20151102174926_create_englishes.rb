class CreateEnglishes < ActiveRecord::Migration
  def change
    create_table :englishes do |t|
      t.string :word
      t.text :meaning

      t.timestamps null: false
    end
  end
end
