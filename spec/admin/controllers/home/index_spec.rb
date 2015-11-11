require 'spec_helper'
require_relative '../../../../apps/admin/controllers/home/index'

describe Admin::Controllers::Home::Index do
  let(:action) { Admin::Controllers::Home::Index.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    response[0].must_equal 200
  end
end
