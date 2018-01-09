require "version"
require "s3/s3_loader"

module ShyFlag
  attr_reader :expire, :expiration, :results, :region
  def self.get(region, bucket, key, expire = 3600)
    @expire = expire
    puts Time.now()
    if(@expiration.nil? || @expiration < Time.now())
      s3_loader= S3Loader.new(region, bucket, key)
      @results = s3_loader.get_image_from_s3()
      @expiration = Time.now()+ @expire
    end
    @results
  end
end
