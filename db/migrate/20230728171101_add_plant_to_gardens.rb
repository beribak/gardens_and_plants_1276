class AddPlantToGardens < ActiveRecord::Migration[7.0]
  def change
    # add_reference :plants, :garden, index: true, foreign_key: true
  end
end
