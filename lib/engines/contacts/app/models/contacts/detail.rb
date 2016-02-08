module Contacts
  class Detail < ActiveRecord::Base
    attr_accessor :user_name
    belongs_to :user, class_name: Contacts.user_class.to_s

    before_save :set_user

    private
      def set_user
        self.user = Contacts.user_class.find_or_create_by(name: user_name)
      end
  end
end
