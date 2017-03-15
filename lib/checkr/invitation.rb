module Checkr
  class Invitation < APIResource

    attribute :status
    attribute :completed_at
    attribute :package
    attribute :candidate, :Candidate                
    attribute_writer_alias :candidate_id, :candidate


    api_class_method :all, :get, :constructor => APIList.constructor(:Invitation)
    api_class_method :create, :post
    api_class_method :retrieve, :get, ":path/:id", :arguments => [:id]

    api_instance_method :cancel, :delete

    def self.path
      "/v1/invitations"
    end

    APIClass.register_subclass(self, "invitation")
  end
end
