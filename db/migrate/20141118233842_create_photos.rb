class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url
      t.references :event, index: true

      t.timestamps
    end
  end
end
