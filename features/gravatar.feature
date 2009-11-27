Feature: Gravatar
  In order to have avatars of users around the site
  A user
  Should be able see users' gravatars where relevant

    Scenario: User is not signed in
      Given no user exists with an email of "email@person.com"
      When I go to the homepage
      Then I should not see my gravatar

    Scenario: User is signed in
      Given I have signed in with "email@person.com/password"
      When I go to the homepage
      Then I should see my gravatar
