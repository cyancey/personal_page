class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.string :name
      t.string :image_path

      t.timestamps
    end
  end
end
