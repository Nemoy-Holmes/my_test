class CreateSimplePages < ActiveRecord::Migration[5.2]
  def change
    create_table :simple_pages do |t|

      t.timestamps
    end
  end
end
