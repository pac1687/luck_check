require ("rspec")
require ("luck_check")

describe("luck_check") do
  it("outputs true for a given even number if it is considered lucky") do
    luck_check(2653).should(eq(true))
  end

  it("outputs true for a given odd number if it is considered lucky") do
    luck_check(26053).should(eq(true))
  end

  it("outputs false for a given even number if it is not considered lucky") do
    luck_check(2615).should(eq(false))
  end

  it("outputs false for a given odd number if it is not considered lucky") do
    luck_check(26015).should(eq(false))
  end
end
