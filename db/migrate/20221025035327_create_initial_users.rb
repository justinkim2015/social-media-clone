class CreateInitialUsers < ActiveRecord::Migration[7.0]
  def up
    User.create!(first_name: 'justin', last_name: 'kim', email: 'foo@bar', password: 'foobar', password_confirmation: 'foobar')
    User.create!(first_name: 'Brandon', last_name: 'Lee', email: 'bar@foo', password: 'foobar', password_confirmation: 'foobar')
    User.create!(first_name: 'Jess', last_name: 'Best', email: 'foo@foo', password: 'foobar', password_confirmation: 'foobar')
    User.create!(first_name: 'Yuki', last_name: 'Kato', email: 'bar@bar', password: 'foobar', password_confirmation: 'foobar')
    User.create!(first_name: 'Satoshi', last_name: 'Sato',email: 'fooo@bar', password: 'foobar', password_confirmation: 'foobar')
    User.create!(first_name: 'Bill', last_name: 'McGill', email: 'foo@baar', password: 'foobar', password_confirmation: 'foobar')
    User.create!(first_name: 'Chad', last_name: 'Strong', email: 'fooo@fooo', password: 'foobar', password_confirmation: 'foobar')
    User.create!(first_name: 'Jay', last_name: 'Q', email: 'baar@baar', password: 'foobar', password_confirmation: 'foobar')
  end

  def down
    User.delete_all
  end
end
