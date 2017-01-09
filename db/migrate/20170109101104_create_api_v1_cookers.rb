class CreateApiV1Cookers < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_cookers do |t|
      t.string :cooker_name
      t.string :cooker_email_address
      t.string :cooker_home_address
      t.string :cooker_phone_number
      t.string :cooker_other_phone_number

      t.timestamps
    end
  end
end
