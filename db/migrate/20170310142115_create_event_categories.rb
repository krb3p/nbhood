class CreateEventCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :event_categories do |t|
      t.references :event, foreign_key: true
      t.references :category, foreign_key: true
    end
  end
end
