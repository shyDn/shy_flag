# ShyFlag

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shy_flag', '~> 0.1.7'
```

And then execute:

    $ bundle install

## Usage

  ShyFlag.get(aws_region,bucket_name,object_key,expir_time,credential)

  aws_region, bucket_name, object_key, expir_time(eg: 3600 means 1 hour) are required

  credential is optional (eg: {"access_key_id"=>"xxxxxxxxxxxxx","secret_access_key"=>"xxxxxxxxxxxxxxxxxxxxx"})


#Recommendation

  flag storage as json in s3