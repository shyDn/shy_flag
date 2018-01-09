# ShyFlag

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shy_flag', '~> 0.1.4'
```

And then execute:

    $ bundle install

## Usage

  ShyFlag.get(aws_region,bucket_name,object_key,expir_time)

  aws_region, bucket_name, object_key are required

  expir_time is optional, default value is 3600(1h)


#Recommendation

  flag storage as json in s3