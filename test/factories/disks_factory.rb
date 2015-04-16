require "factories/collection_factory"

class DisksFactory < CollectionFactory
  def initialize
    super
    @subject = Fog::Compute[:google].disks
  end

  def params
    {:name => create_test_name,
     :zone_name => TEST_ZONE,
     :size_gb => TEST_SIZE_GB}
  end
end