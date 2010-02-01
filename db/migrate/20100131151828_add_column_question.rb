class AddColumnQuestion < ActiveRecord::Migration
  def self.up
    change_table :questions do |t|
      t.belongs_to :exam
    end
  end

  def self.down
    change_table :questions do |t|
      t.remove_belongs_to :exam
    end
  end
end

