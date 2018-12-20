class CreateBmws < ActiveRecord::Migration[5.2]
  def change
    create_table :bmws do |t|
      t.string :ad_title
      t.string :ad_url
      t.string :location
      t.integer :model_year
      t.string :body_type
      t.string :thumbnail_url
      t.string :gallery_url
      t.string :vin
      t.string :series
      t.string :type
      t.string :engine
      t.string :power

      t.timestamps
    end
  end
end
