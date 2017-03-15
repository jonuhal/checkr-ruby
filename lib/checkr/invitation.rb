module Checkr
  class Invitation < APIResource

    attribute :package
    attribute :candidate_id

    api_class_method :all, :get, :constructor => APIList.constructor(:Invitation)
    api_class_method :create, :post
    api_class_method :retrieve, :get, ":path/:id", :arguments => [:id]

    api_instance_method :save, :post, :default_params => :changed_attributes

    def self.path
      "/v1/invitations"
    end

    APIClass.register_subclass(self, "invitation")
  end
end
