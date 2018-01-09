require 'aws-sdk-s3'

class S3Loader
  attr_reader :s3, :region, :bucket, :key
  
  def initialize(region, bucket, key)
    @region=region
    @s3=s3_client
    @bucket=bucket
    @key=key
  end

  def s3_client
    Aws::S3::Client.new(region: @region)
  end

  def get_image_from_s3()
    begin
      resp = @s3.get_object({
        bucket: @bucket,
        key: @key
      })
      resp.body.read
    rescue Aws::S3::Errors => exception
      puts exception
    end
  end
end
