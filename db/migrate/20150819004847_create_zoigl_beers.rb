class CreateZoiglBeers < ActiveRecord::Migration
  def change
    create_table :zoigl_beers do |t|
      t.string :beername
      t.integer :rbid
      t.integer :rbbrewer
      t.float :alcohol
      t.text :description

      t.timestamps
    end
  end
end
