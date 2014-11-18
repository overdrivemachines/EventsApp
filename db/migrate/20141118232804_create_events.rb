class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :fromDate
      t.time :fromTime
      t.time :untilTime
      t.date :untilDate
      t.string :address1
      t.string :address2
      t.string :zip
      t.string :description
      t.string :url
      t.string :email
      t.string :phone
      t.references :user, index: true

      t.timestamps
    end
  end
end
