class ChangeSustainUsageToSustainActionType < ActiveRecord::Migration
  def self.up
    rename_column :powers, :sustain_usage, :sustain_action_type
  end

  def self.down
    rename_column :powers, :sustain_action_type, :sustain_usage
  end
end
