require 'aws-sdk-s3'

class S3Loader
  def initialize(region, bucket, key, credential)
    @s3=s3_client(credential, region)
    @bucket=bucket
    @key=key
  end

  def s3_client(credential, region)
    if credential.nil?
      Aws::S3::Client.new(region: region)
    else
      Aws::S3::Client.new(region: region,credentials: Aws::Credentials.new(credential['access_key_id'], credential['secret_access_key']))
    end
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
