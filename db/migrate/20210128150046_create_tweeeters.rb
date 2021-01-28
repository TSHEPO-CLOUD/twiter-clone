class CreateTweeeters < ActiveRecord::Migration[6.1]
  def change
    create_table :tweeeters do |t|
      t.text :tweeet

      t.timestamps
    end
  end
end
