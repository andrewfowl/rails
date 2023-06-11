class AddPsql < ActiveRecord::Migration[7.0]
  def change
   enable_extension("railway") unless extensions.include? "railway"
   end
  end
end
