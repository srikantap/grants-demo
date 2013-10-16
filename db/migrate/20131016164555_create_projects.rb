class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :partner
      t.string :manager
      t.decimal :planned_budget, precision: 8, scale:2
      t.decimal :actual_budget, precision: 8, scale:2
      t.string :theme
      t.date :start_date
      t.date :end_date
      t.integer :extensions

      t.timestamps
    end
  end
end
