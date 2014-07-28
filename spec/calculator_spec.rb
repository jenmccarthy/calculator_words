require ("rspec")
require ("calculator")

describe ("calculator") do
  it("will take an addition word problem and calculate it for floats and integers") do
    expect(calculator("What is 5.2 plus 3.7?")).to(eq(8.9))
  end

  it("will take a subtraction word problem and calculate it") do
    expect(calculator("What is 7 minus 4?")).to(eq(3))
  end

  it("will take a division word problem and calculate it") do
    expect(calculator("What is 15 divided by 3?")).to(eq(5))
  end

  it("will take a multiplication word problem and calculate it") do
    expect(calculator("What is 8 times 2?")).to(eq(16))
  end

  it("will take a power of word problem and calculate it") do
    expect(calculator("What is 4 to the 3rd power?")).to(eq(64))
  end

  it("will take multiple operations and calculate them") do
    expect(calculator("What is 4 plus 6 divided by 2?")).to(eq(5))
  end

  it("will take an endless amount of operations and calculate them") do
    expect(calculator("What is 12 divided by 2 to the 3rd power?")).to(eq(216))
  end

  it("will take an expression starting with an exponent and calculate it") do
    expect(calculator("What is 4 to the 2nd power plus 7?")).to(eq(23))
  end
end
