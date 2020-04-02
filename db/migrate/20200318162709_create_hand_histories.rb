class CreateHandHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :hand_histories do |t|

      t.timestamps
    end
  end
end
