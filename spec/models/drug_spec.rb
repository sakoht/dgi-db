require 'spec_helper'

describe GenomeModels::DataModel::Drug do
  set_fixture_class :drug_name_report => GenomeModels::DataModel::Drug
  fixtures :all
  it "should have many alternate names" do
    drug_name_report("drug_b").drug_alternate_names.should be_an_instance_of(Array)
    drug_name_report("drug_b").drug_alternate_names.first.should be_an_instance_of(GenomeModels::DataModel::DrugAlternateName)
  end

  it "should have many categories" do
    drug_name_report("drug_a").drug_categories.should be_an_instance_of(Array)
    drug_name_report("drug_a").drug_categories.first.should be_an_instance_of(GenomeModels::DataModel::DrugCategory)
  end

  it "should have many interactions" do
    drug_name_report("drug_a").interactions.should be_an_instance_of(Array)
    drug_name_report("drug_a").interactions.first.should be_an_instance_of(GenomeModels::DataModel::Interaction)
  end

  it "should have many genes" do
    drug_name_report("drug_a").genes.should be_an_instance_of(Array)
    drug_name_report("drug_a").genes.first.should be_an_instance_of(GenomeModels::DataModel::Gene)
  end

  it 'should have a citation' do
    drug_name_report("drug_a").citation.should be_an_instance_of(GenomeModels::DataModel::Citation)
  end

end
