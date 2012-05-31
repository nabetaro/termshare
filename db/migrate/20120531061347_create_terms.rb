class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.integer :unit_id
      t.text :segment
      t.string :lang
      t.text :note

      t.timestamps
    end
  end
end
