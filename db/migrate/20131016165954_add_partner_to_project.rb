class AddPartnerToProject < ActiveRecord::Migration
  def change
    add_column :projects, :partner, :string
  end
end
