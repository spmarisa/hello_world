class CreateCarModels < ActiveRecord::Migration[7.0]
  def change
    create_table :car_models do |t|
      t.string :makeid
      t.string :makename
      t.string :modelid
      t.string :modelname
      t.integer :saleyear

      t.timestamps
    end
  end
end
