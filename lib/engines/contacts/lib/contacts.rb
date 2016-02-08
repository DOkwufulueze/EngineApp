require "contacts/engine"

module Contacts
  mattr_accessor :user_class

  def self.user_class
    @@user_class.constantize
  end
end
