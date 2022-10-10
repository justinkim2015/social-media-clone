# README

To-do

Oct 10 05:22:17 PM  [69] ! Unable to load application: RuntimeError: Missing service adapter for "S3"

bundler: failed to load command: puma (/opt/render/project/.gems/bin/puma)

Oct 10 05:22:17 PM  /opt/render/project/.gems/ruby/3.1.0/gems/activestorage-7.0.4/lib/active_storage/service/configurator.rb:33:in `rescue in resolve': Missing service adapter for "S3" (RuntimeError)

Oct 10 05:22:17 PM  /opt/render/project/rubies/ruby-3.1.2/lib/ruby/site_ruby/3.1.0/bundler/rubygems_integration.rb:280:in `block (2 levels) in replace_gem': aws-sdk-s3 is not part of the bundle. Add it to your Gemfile. (Gem::LoadError)



Oct 10 05:33:05 PM  [72] ! Unable to load application: Aws::Sigv4::Errors::MissingCredentialsError: missing credentials, provide credentials with one of the following options:
Oct 10 05:33:05 PM    - :access_key_id and :secret_access_key
Oct 10 05:33:05 PM    - :credentials
Oct 10 05:33:05 PM    - :credentials_provider
Oct 10 05:33:05 PM  bundler: failed to load command: puma (/opt/render/project/.gems/bin/puma)
Oct 10 05:33:05 PM  /opt/render/project/.gems/ruby/3.1.0/gems/aws-sigv4-1.5.2/lib/aws-sigv4/signer.rb:654:in `extract_credentials_provider': missing credentials, provide credentials with one of the following options: (Aws::Sigv4::Errors::MissingCredentialsError)
Oct 10 05:33:05 PM    - :access_key_id and :secret_access_key
Oct 10 05:33:05 PM    - :credentials
