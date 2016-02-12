class RenameQuoteColumn < ActiveRecord::Migration
  def change
  	rename_column(:quotes, :quote, :saying)
  end
end