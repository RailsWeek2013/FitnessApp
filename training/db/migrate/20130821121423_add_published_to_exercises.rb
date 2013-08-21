class AddPublishedToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :published, :boolean, default: false
  end
end
