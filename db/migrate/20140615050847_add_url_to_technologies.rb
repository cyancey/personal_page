class AddUrlToTechnologies < ActiveRecord::Migration
  def change
    add_column :technologies, :url, :string
  end
end