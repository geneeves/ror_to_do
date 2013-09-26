class AddDoneFalseAttribute < ActiveRecord::Migration
  def change
    add_column :tasks, :done, :boolean, :default => false
  end
end
