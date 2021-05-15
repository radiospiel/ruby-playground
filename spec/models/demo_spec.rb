# frozen_string_literal: true

require "spec_helper"

RSpec.describe Demo do
  describe ".new" do
    it "builds a new Demo object" do
      expect(Demo.new).to be_a(Demo)
    end
  end
end
