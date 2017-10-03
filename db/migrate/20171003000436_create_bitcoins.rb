class CreateBitcoins < ActiveRecord::Migration[5.1]
  def change
    create_table :bitcoins do |t|
      t.string :address
      t.string :testnet_address

      t.timestamps
    end
  end
end
