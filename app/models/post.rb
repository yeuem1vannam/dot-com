class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :title, type: String, default: "Post #{Time.now}"
  field :body, type: String, default: ""
end
