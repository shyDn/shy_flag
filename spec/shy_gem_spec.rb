require "spec_helper"

RSpec.describe ShyGem do
  it "has a version number" do
    expect(ShyGem::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
