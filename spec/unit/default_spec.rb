require 'unit/spec_helper'

describe 'sprout-mysql::default' do
  let(:runner) { ChefSpec::Runner.new }

  before do
    stub_command(/mysql /)
  end

  it 'includes the install recipe' do
    runner.converge(described_recipe)
    expect(runner).to include_recipe('sprout-mysql::install')
  end
end
