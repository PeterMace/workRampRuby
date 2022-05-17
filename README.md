# Group Automations Sandbox

This application is a sandboxed and highly abstracted version of existing functionality within the WorkRamp application.

Within this application, you can:

* Create Users
* Create Guides for Users to get assigned to
* Create Groups to include Users in
* Create Group Automations within Groups that will assign Guides to Users automatically

But it's a little bit buggy! The client has reported that:

* There's an error when trying to remove ALL Users from a Group
* There's an error when trying to update the name of a Group
* The above two errors may be related
* When a User is added to a Group WITH Group Automations, the Guides in the Group Automations aren't automatically assigned

To set up your local environment:

* `bundle install` (install the ruby gems -- you may need to use sudo or provide an admin user's password)
* `yarn install` (install the js packages)
* `rails db:create` (create the sqlite db)
* `rails db:migrate` (fill the sqlite db)
* `rails server` (start the local server)
* `bin/webpack-dev-server` (start the webpack server)

Helpful links:

* https://guides.rubyonrails.org/getting_started.html