class User < ActiveRecord::Base
  has_many :contacts, class_name: Contacts::Detail
end
