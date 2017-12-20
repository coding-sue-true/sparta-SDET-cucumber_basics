# sparta-cucumber

## Main
This repository had the purpose to run through the initial steps of how to work and read Guerkin, Cucumber's language.

Every feature has to start with a Guerkin expression (Given, And, When, Then) as the above:

```
Feature: BBC Login

  Scenario: Inputting incorrect username credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I receive an error for not finding the account
```
With the tests written in [this repo](https://github.com/coding-sue-true/sparta-SDET-ui_testing-Capybara-POM) we reused them using Cucumber, which has a much better readability for stakeholders or even for someone who doesn't have any experience reading and writing code.

### How to Test
1. Git clone this repo
2. Go into the directory where this repo was cloned
3. On your console, install the required gems

```
gem install capybara
gem install cucumber
```
4. On your console, run cucumber

```
cucumber
```
5. You will obtain something like the following:

![Tests](/images/tests.png)


### Documentation
- https://cucumber.io/docs/reference/ruby
- https://github.com/cucumber/cucumber/wiki/A-Table-Of-Content
- http://www.rubydoc.info/github/cucumber/cucumber-ruby/
