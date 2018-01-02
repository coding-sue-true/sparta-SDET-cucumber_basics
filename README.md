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

We've also learnt how to export that data from the tests into an html file (other file formats are also available, you can choose whichever you want). The command for this, in your console, is:

```
cucumber -f html
```
Then you just have to copy and paste it in a new file on your directory.
Or you can first create that file, and then just give it the route and it will save it directly into that file (I'm using the example for this repo):

```
cucumber -f html -o features/reports/test.html
```

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
