class AddCategoryToKeywords < ActiveRecord::Migration
  def self.up
    add_column :keywords, :category, :string
  end

  def self.down
    remove_column :keywords, :category
  end
end
