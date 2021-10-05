class CreateServerStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :server_statuses do |t|
      t.string :status
      t.string :message

      t.timestamps
    end
  end
end
