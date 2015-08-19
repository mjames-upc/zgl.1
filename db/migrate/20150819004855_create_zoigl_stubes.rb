class CreateZoiglStubes < ActiveRecord::Migration
  def change
    create_table :zoigl_stubes do |t|
      t.string :stube_name
      t.string :address
      t.string :city
      t.integer :rbid
      t.integer :founded
      t.float :score
      t.float :lat
      t.float :lon
      t.string :web
      t.string :hours
      t.text :description
      t.string :phone

      t.timestamps
    end
  end
end
