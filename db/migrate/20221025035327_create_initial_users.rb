class CreateInitialUsers < ActiveRecord::Migration[7.0]
  def up
    User.create!(first_name: 'justin', last_name: 'kim', email: 'woo@bar.com', password: 'foobar', password_confirmation: 'foobar')
    User.create!(first_name: 'Brandon', last_name: 'Lee', email: 'war@foo.com', password: 'foobar', password_confirmation: 'foobar')
    User.create!(first_name: 'Jess', last_name: 'Best', email: 'woo@foo.com', password: 'foobar', password_confirmation: 'foobar')
    User.create!(first_name: 'Yuki', last_name: 'Kato', email: 'war@bar.com', password: 'foobar', password_confirmation: 'foobar')
    User.create!(first_name: 'Satoshi', last_name: 'Sato',email: 'wooo@bar.com', password: 'foobar', password_confirmation: 'foobar')
    User.create!(first_name: 'Bill', last_name: 'McGill', email: 'woo@baar.com', password: 'foobar', password_confirmation: 'foobar')
    User.create!(first_name: 'Chad', last_name: 'Strong', email: 'wooo@fooo.com', password: 'foobar', password_confirmation: 'foobar')
    User.create!(first_name: 'Jay', last_name: 'Q', email: 'waar@baar.com', password: 'foobar', password_confirmation: 'foobar')
  end

  def down
    User.delete_all
  end
end
