class AddTopicReferenceToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :topic_references, :string
  end
end
