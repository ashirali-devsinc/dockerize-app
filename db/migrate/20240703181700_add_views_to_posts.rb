# frozen_string_literal: true

# This is adding a new attribute to the Post Model
class AddViewsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :views, :integer, default: 0
  end
end
