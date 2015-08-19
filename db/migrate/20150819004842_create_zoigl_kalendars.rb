class CreateZoiglKalendars < ActiveRecord::Migration
  def change
    create_table :zoigl_kalendars do |t|
      t.datetime :begin
      t.datetime :end
      t.text :description
      t.references :zoigl_stube, index: true

      t.timestamps
    end
  end
end
