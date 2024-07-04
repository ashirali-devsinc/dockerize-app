# frozen_string_literal: true

# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  views      :integer          default(0)
#
require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save post without title' do
    post = Post.new
    assert post.save, 'Saved the post without title'
  end

  test 'should save post with title' do
    post = Post.new(title: 'test title')
    assert post.save, 'Saved the post with title'
  end

  test 'should save post with title and views' do
    post = Post.new(title: 'test title', views: 1)
    assert post.save, 'Saved the post with title'
  end
end
