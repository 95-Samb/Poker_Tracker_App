class AddDatatoHandHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :hand_histories, :data, :text
  end
end
