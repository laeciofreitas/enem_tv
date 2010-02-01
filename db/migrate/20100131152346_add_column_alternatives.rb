class AddColumnAlternatives < ActiveRecord::Migration
  def self.up
    change_table :alternatives do |t|
      t.belongs_to :question
    end
  end

  def self.down
    change_table :alternatives do |t|
      t.remove_belongs_to :question
    end
  end
end

