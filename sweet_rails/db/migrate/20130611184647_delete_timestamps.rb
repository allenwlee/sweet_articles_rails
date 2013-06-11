class DeleteTimestamps < ActiveRecord::Migration
  def down
    remove_column :articles_tags, :timestamps
  end
end
