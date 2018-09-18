class AddSlugToPerformance < ActiveRecord::Migration[5.2]
  def change
    add_column :performances, :slug, :string
  end
end
