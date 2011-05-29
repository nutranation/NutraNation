class Comment < Communication
  validates :post_id, :presence => true
end
