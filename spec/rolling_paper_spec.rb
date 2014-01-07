require 'spec_helper'

describe Strain do 

  describe ".all_strains" do 

    before :all do 
      @strains = Strain.all_strains
    end

    it "should return all the strains" do 
      expect(@strains.length).to be > 10
    end

    it "should include attributes" do 
      expect(@strains.first.id).to_not be(nil)
    end

    it "should return strain objects" do 
      expect(@strains.first.kind_of?(Strain)).to be true
    end
  end

  describe ".all_key_names" do 

    before :all do 
      @strain_names = Strain.all_key_names
    end

    it "should return all the key names" do 
      expect(@strain_names.length).to be > 10
    end

    it "should return names of strains" do 
      expect(@strain_names.include?("ak-47")).to be true
    end

  end

  describe ".find_by_key(key)" do 

    before :all do 
      @strain = Strain.find_by_key("ak-47")
    end

    it "should return the correct strain" do 
      expect(@strain.key).to eq("ak-47")
    end

    it "should return a strain object" do 
      expect(@strain.kind_of?(Strain)).to be true
    end
  end

  describe ".find_by_category(category)" do 

    before :all do 
      @strains = Strain.find_by_category("Hybrid")
    end

    it "should return the correct strain" do 
      expect(@strains.all? {|strain| strain.category == "Hybrid"} ).to be true
    end

    it "should return a strain object" do 
      expect(@strains.first.kind_of?(Strain)).to be true
    end
  end
  
end
