class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.references :cooker
      t.string :menu_title
      t.string :menu_descriptions

      t.timestamps
    end
  end
end
