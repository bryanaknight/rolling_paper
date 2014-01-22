require 'spec_helper'



describe Strain do


  describe ".all_strains" do

    before :all do
      VCR.use_cassette('all_strains') do
        @strains = Strain.all_strains
      end
    end

    it "should return all the strains" do
      VCR.use_cassette('all_strains') do
        expect(@strains.length).to be > 10
      end
    end

    it "should include attributes" do
      VCR.use_cassette('all_strains') do
        expect(@strains.first.id).to_not be(nil)
      end
    end

    it "should return strain objects" do
      VCR.use_cassette('all_strains') do
        expect(@strains.first.kind_of?(Strain)).to be true
      end
    end
  end

  describe ".all_key_names" do

    before :all do
      VCR.use_cassette('all_key_names') do
        @strain_names = Strain.all_key_names
      end
    end

    it "should return all the key names" do
      VCR.use_cassette('all_key_names') do
        expect(@strain_names.length).to be > 10
      end
    end

    it "should return names of strains" do
      VCR.use_cassette('all_key_names') do
        expect(@strain_names.include?("ak-47")).to be true
      end
    end

  end

  describe ".find_by_key(key)" do

    before :all do
      VCR.use_cassette('find_by_key') do
        @strain = Strain.find_by_key("ak-47")
      end
    end

    it "should return the correct strain" do
      VCR.use_cassette('find_by_key') do
        expect(@strain.key).to eq("ak-47")
      end
    end

    it "should return a strain object" do
      VCR.use_cassette('find_by_key') do
        expect(@strain.kind_of?(Strain)).to be true
      end
    end
  end

  describe ".find_by_category(category)" do

    before :all do
      VCR.use_cassette('find_by_category') do
        @strains = Strain.find_by_category("Hybrid")
      end
    end

    it "should return the correct strain" do
      VCR.use_cassette('find_by_category') do
        expect(@strains.all? {|strain| strain.category == "Hybrid"} ).to be true
      end
    end

    it "should return a strain object" do
      VCR.use_cassette('find_by_category') do
        expect(@strains.first.kind_of?(Strain)).to be true
      end
    end
  end

end
