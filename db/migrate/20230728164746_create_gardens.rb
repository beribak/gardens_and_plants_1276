class CreateGardens < ActiveRecord::Migration[7.0]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :garden_banner_url

      t.timestamps
    end
  end
end
