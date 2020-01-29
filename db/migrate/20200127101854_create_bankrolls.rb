class CreateBankrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :bankrolls do |t|

      t.timestamps
    end
  end
end
