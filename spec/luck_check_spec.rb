require ("rspec")
require ("luck_check")

describe("luck_check") do
  it("outputs true for a given even number if it is considered lucky") do
    luck_check(2608).should(eq(true))
  end
end
