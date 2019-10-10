
require_relative '../lib/crypto'



describe "the crypto" do
  it "should return a non nil value" do
    expect(crypto).not_to be_nil
  end

  it "should return  a non nil value for BTC " do
  	expect(crypto["BTC"]).not_to be_nil
 
  end


end




