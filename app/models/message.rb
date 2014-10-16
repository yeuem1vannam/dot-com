class Message
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String, default: ""
  field :email, type: String, default: ""
  field :message, type: String, default: ""
end
