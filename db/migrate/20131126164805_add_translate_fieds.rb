class AddTranslateFieds < ActiveRecord::Migration
  def change
    params = { :title => :string, :body => :text, :summary => :text}
    Spree::BlogEntry.create_translation_table!(params, { :migrate_data => true })
  end
end
