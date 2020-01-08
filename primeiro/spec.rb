require 'rspec/autorun'
require './init.rb'


describe "Primeiro" do
  it "should load file" do
    expect(processText("Dicionario.txt").size).to eq(370103)
  end

  it "should have the same size" do
    expect(normalize("ca_a")).to eq([['c', 0], ['a', 1], ['a', 3]])
  end

  it "should print true" do
    dic = ["teste", "casa", "zogo"]
    expect(find(dic, "ca_a")).to eq(["casa"])
  end

  it "success true" do
    dic = ["teste", "casa", "zogo"]
    expect(success?(dic, "ca_a")).to eq(true)
  end

  it "success false" do
    dic = ["teste", "casa", "zogo"]
    expect(success?(dic, "bo_a")).to eq(false)
  end
  
end