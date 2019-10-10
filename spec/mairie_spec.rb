
require_relative '../lib/mairie'



describe "mairie" do
  it "should return a non nil value" do
    expect(mairie).not_to be_nil
  end

  it "should return a non vil value for Villiers le sec " do
  	expect(mairie["VILLIERS LE SEC"]).not_to be_nil
 
  end


end



