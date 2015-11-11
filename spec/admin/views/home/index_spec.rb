require 'spec_helper'
require_relative '../../../../apps/admin/views/home/index'

describe Admin::Views::Home::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/admin/templates/home/index.html.erb') }
  let(:view)      { Admin::Views::Home::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
