require "spec_helper"

RSpec.describe "playground" do
  describe MiniRails do
    it "provides a Rails constant" do
      expect(Rails).to be_a(Module)
      expect(Rails).to eq(MiniRails)
    end

    describe "Rails.env" do
      it "returns a environment string" do
        expect(Rails.env).to eq("test")
      end
    end

    describe "Rails.logger" do
      it "has a logger" do
        expect(Rails.logger).to be_a(Logger)
      end
    end
  end

  describe "lib path setup" do
    it "lets require a module from lib" do
      require "dummy"
      expect(Dummy).to be_a(Module)
    end
  end
end
