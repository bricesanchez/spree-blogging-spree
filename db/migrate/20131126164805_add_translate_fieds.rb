class AddTranslateFieds < ActiveRecord::Migration
  def change
    params = { :title => :string, :body => :text, :summary => :text, :permalink => :string}
    Spree::BlogEntry.create_translation_table!(params, { :migrate_data => true })
  end
end
