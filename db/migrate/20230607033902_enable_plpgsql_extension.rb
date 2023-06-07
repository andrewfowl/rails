class EnablePlpgsqlExtension < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'plpgsql'
    enable_extension 'timescaledb'
  end
end
