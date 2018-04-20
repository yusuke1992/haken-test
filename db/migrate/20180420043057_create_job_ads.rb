class CreateJobAds < ActiveRecord::Migration[5.0]
  def change
    create_table :job_ads do |t|
      t.string :name,              null: false, default: ""
      t.text :introduction 
      t.timestamps
    end
  end
end
