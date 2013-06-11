class CreateGudzs < ActiveRecord::Migration
  def change
    create_table :gudzs do |t|

      t.timestamps
    end
  end
end
