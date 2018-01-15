require "version"
require "s3/s3_loader"

module ShyFlag
  def self.get(region, bucket, key, expire = 3600, credential = nil)
    @expire = expire
    if(@expiration.nil? || @expiration < Time.now())
      @results = S3Loader.new(region, bucket, key, credential).get_image_from_s3()
      @expiration = Time.now()+ @expire
    end
    @results
  end
end
