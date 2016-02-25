require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
module Api
  module V1
    RSpec.describe AccountMovementsController, :type => :controller do

      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:user]
        user = FactoryGirl.create(:user)
        user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
        sign_in user
      end

      describe "User must logged" do
        it "should have a current_user" do
          # note the fact that you should remove the "validate_session" parameter if this was a scaffold-generated controller
          expect(subject.current_user).not_to eq(nil)
        end
      end

    end
  end
end