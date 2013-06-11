class CreateShizzs < ActiveRecord::Migration
  def change
    create_table :shizzs do |t|

      t.timestamps
    end
  end
end
