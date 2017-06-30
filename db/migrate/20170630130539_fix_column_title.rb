class FixColumnTitle < ActiveRecord::Migration
  def change
  	rename_column :Posts, :tilte, :title
  end
end
